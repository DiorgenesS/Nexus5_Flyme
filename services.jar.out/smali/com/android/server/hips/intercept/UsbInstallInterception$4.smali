.class Lcom/android/server/hips/intercept/UsbInstallInterception$4;
.super Ljava/lang/Object;
.source "UsbInstallInterception.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hips/intercept/UsbInstallInterception;->showDialog(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

.field final synthetic val$apkName:Ljava/lang/String;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/hips/intercept/UsbInstallInterception;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hips/intercept/UsbInstallInterception;
    .param p2, "val$pkgName"    # Ljava/lang/String;
    .param p3, "val$apkName"    # Ljava/lang/String;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$4;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    iput-object p2, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$4;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$4;->val$apkName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$4;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    iget-object v1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$4;->val$pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$4;->val$apkName:Ljava/lang/String;

    const/4 v3, 0x1

    .line 471
    const/4 v4, -0x1

    .line 470
    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/server/hips/intercept/UsbInstallInterception;->setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V

    .line 469
    return-void
.end method
