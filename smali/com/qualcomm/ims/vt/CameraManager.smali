.class public Lcom/qualcomm/ims/vt/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/CameraManager$Camera2Factory;,
        Lcom/qualcomm/ims/vt/CameraManager$Camera1Factory;,
        Lcom/qualcomm/ims/vt/CameraManager$IFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field static mFactory:Lcom/qualcomm/ims/vt/CameraManager$IFactory;

.field private static sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/qualcomm/ims/vt/CameraManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraManager;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {p1}, Lorg/codeaurora/telephony/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraManager;->shallUseCamera2()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/qualcomm/ims/vt/CameraManager$Camera2Factory;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/ims/vt/CameraManager$Camera2Factory;-><init>(Lcom/qualcomm/ims/vt/CameraManager;Lcom/qualcomm/ims/vt/CameraManager-IA;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/qualcomm/ims/vt/CameraManager$Camera1Factory;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/ims/vt/CameraManager$Camera1Factory;-><init>(Lcom/qualcomm/ims/vt/CameraManager;Lcom/qualcomm/ims/vt/CameraManager-IA;)V

    :goto_0
    invoke-static {v0}, Lcom/qualcomm/ims/vt/CameraManager;->setFactory(Lcom/qualcomm/ims/vt/CameraManager$IFactory;)V

    .line 36
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/qualcomm/ims/vt/CameraManager;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    if-nez v1, :cond_0

    .line 59
    new-instance v1, Lcom/qualcomm/ims/vt/CameraManager;

    invoke-direct {v1, p0}, Lcom/qualcomm/ims/vt/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static open(Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)Lcom/qualcomm/ims/vt/Camera;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "open cameraid= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " listener= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraManager"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    iget-object v0, v0, Lcom/qualcomm/ims/vt/CameraManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v0}, Lorg/codeaurora/telephony/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-static {p1}, Lorg/codeaurora/telephony/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/qualcomm/ims/vt/CameraManager;->sCameraManager:Lcom/qualcomm/ims/vt/CameraManager;

    iget-object v0, v0, Lcom/qualcomm/ims/vt/CameraManager;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lcom/qualcomm/ims/vt/CameraManager;->mFactory:Lcom/qualcomm/ims/vt/CameraManager$IFactory;

    invoke-interface {v0, p0, p1}, Lcom/qualcomm/ims/vt/CameraManager$IFactory;->create(Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)Lcom/qualcomm/ims/vt/Camera;

    move-result-object p0

    .line 80
    invoke-static {p0}, Lorg/codeaurora/telephony/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera;->open()V

    return-object p0

    .line 75
    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 p1, 0x3

    const-string v0, "Camera is disabled."

    invoke-direct {p0, p1, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static setFactory(Lcom/qualcomm/ims/vt/CameraManager$IFactory;)V
    .locals 0

    .line 65
    sput-object p0, Lcom/qualcomm/ims/vt/CameraManager;->mFactory:Lcom/qualcomm/ims/vt/CameraManager$IFactory;

    return-void
.end method

.method private shallUseCamera2()Z
    .locals 3

    .line 88
    const-string p0, "persist.vendor.qti.telephony.vt_cam_interface"

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v0, :cond_0

    if-eq p0, v1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cameraInterface = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraManager"

    invoke-static {v2, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    if-eq p0, v1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
