import common
import edify_generator


def ModifyBegin(edify):
    for i in xrange(len(edify.script)):
        if 'ui_print("Target:' in edify.script[i] and "user/test-keys" in edify.script[i]:
            edify.script[i] = '''assert(getprop("ro.product.device") == "hammerhead" || getprop("ro.build.product") == "hammerhead" || abort("This package is for device: hammerhead; this device is " + getprop("ro.product.device") + "."););
unmount("/system");
ui_print("===============================================");
ui_print("      Flyme 6 International for Nexus 5        ");
ui_print("===============================================");
ui_print("            By Dio_S @XDADevelopers            ");
ui_print("===============================================");
ui_print("===============================================");
ui_print("DEVICE: Google Nexus 5                         ");
ui_print("FLYME 6 VERSION:                               ");
ui_print("ANDROID VERSION: 6.0.1                         ");
ui_print("===============================================");'''


def ModifyCommand(edify):
    for i in xrange(len(edify.script)):
        if "package_extract_dir(" in edify.script[i] and "recovery" in edify.script[i]:
            edify.script[i] = 'ui_print("Installing system...");'


def AddPrompt(edify):
    for i in xrange(len(edify.script)):
        if "format(" in edify.script[i] and "by-name/system" in edify.script[i]:
            edify.script[i] = 'ui_print("Formating Partition...");\n' + edify.script[i]
        elif 'symlink("/system/lib/libbluetooth_jni.so' in edify.script[i]:
            edify.script[i] = 'ui_print("Creating symlinks...");\n' + edify.script[i]
        elif 'set_metadata_recursive("/system"' in edify.script[i]:
            edify.script[i] = 'ui_print("Setting permissions...");\n' + edify.script[i]
        elif 'package_extract_file("boot' in edify.script[i]:
            edify.script[i] = 'ui_print("Flashing Kernel...");\n' + edify.script[i]


def FullOTA_InstallEnd(info):
    edify = info.script
    ModifyBegin(edify)
    ModifyCommand(edify)
    AddPrompt(edify)
