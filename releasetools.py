import common
import edify_generator

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = """assert(getprop("ro.product.device") == "hammerhead" || getprop("ro.build.product") == "hammerhead" || abort("This package is for device: hammerhead; this device is " + getprop("ro.product.device") + "."););
unmount("/data");
unmount("/system");"""
      return

def ModifyMountData(edify):
    for i in xrange(len(edify.script)):
        if "mount(" in edify.script[i] and "by-name/userdata" in edify.script[i]:
            edify.script[i] = 'run_program("/sbin/busybox", "mount", "/data");'

def ModifyMountSystem(edify):
    for i in xrange(len(edify.script)):
        if "mount(" in edify.script[i] and "by-name/system" in edify.script[i]:
            edify.script[i] = 'mount("ext4", "EMMC", "/dev/block/platform/msm_sdcc.1/by-name/system", "/system");'

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"


def FullOTA_InstallEnd(info):
    edify = info.script
    ModifyMountData(edify)
    WritePolicyConfig(info)
    RemoveDeviceAssert(info)

def IncrementalOTA_InstallEnd(info):
    RemoveDeviceAssert(info)
