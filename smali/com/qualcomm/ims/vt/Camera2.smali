.class public Lcom/qualcomm/ims/vt/Camera2;
.super Lcom/qualcomm/ims/vt/Camera;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;
    }
.end annotation


# static fields
.field public static final AV_TIMER:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAMERA_REQUEST_START_NONE:I = 0x0

.field public static final CAMERA_REQUEST_START_PREVIEW:I = 0x1

.field public static final CAMERA_REQUEST_START_RECORDING:I = 0x2

.field public static final CAMERA_STATE_CLOSED:I = 0x0

.field public static final CAMERA_STATE_OPEN:I = 0x2

.field public static final CAMERA_STATE_OPENING:I = 0x1

.field public static final ENABLE_AV_TIMER:B = 0x1t

.field private static final GENERIC_CONSTANT_INVALID_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Camera2"

.field private static final ZOOM_CONSTANT_NOT_SUPPORTED:I = 0x1


# instance fields
.field private mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

.field private mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraFacing:I

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mCropRegion:Landroid/graphics/Rect;

.field private mFps:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameSkippingRate:I

.field private mIsCreateSessionPending:Z

.field private mIsPreviewStarted:Z

.field private mIsRecordingStarted:Z

.field private mOpenState:I

.field private mPendingStartRequest:I

.field private mPreviewSize:Landroid/util/Size;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mRecordingSize:Landroid/util/Size;

.field private mRecordingSurface:Landroid/view/Surface;

.field private mSensorOrientation:I

.field private mSessionId:I

.field private mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSessionId(Lcom/qualcomm/ims/vt/Camera2;)I
    .locals 0

    iget p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraDevice(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCreateSessionPending(Lcom/qualcomm/ims/vt/Camera2;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOpenState(Lcom/qualcomm/ims/vt/Camera2;I)V
    .locals 0

    iput p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mexectutePendingRequests(Lcom/qualcomm/ims/vt/Camera2;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->exectutePendingRequests()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misClosed(Lcom/qualcomm/ims/vt/Camera2;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->isClosed()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misRequestPending(Lcom/qualcomm/ims/vt/Camera2;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRequestPending()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monConfigureFailed(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monConfigured(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v1, "org.codeaurora.qcamera3.av_timer.use_av_timer"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/qualcomm/ims/vt/Camera2;->AV_TIMER:Landroid/hardware/camera2/CaptureRequest$Key;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V
    .locals 2

    const-string v0, "Ctor: Camera sensor orientation = "

    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/Camera;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V

    const/4 p3, 0x0

    .line 53
    iput-object p3, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSize:Landroid/util/Size;

    .line 54
    iput-object p3, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSize:Landroid/util/Size;

    .line 667
    new-instance p3, Lcom/qualcomm/ims/vt/Camera2$1;

    invoke-direct {p3, p0}, Lcom/qualcomm/ims/vt/Camera2$1;-><init>(Lcom/qualcomm/ims/vt/Camera2;)V

    iput-object p3, p0, Lcom/qualcomm/ims/vt/Camera2;->mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 87
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Ctor, id="

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object p2, p0, Lcom/qualcomm/ims/vt/Camera2;->mContext:Landroid/content/Context;

    const-string p3, "camera"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    const/4 p2, 0x3

    .line 90
    :try_start_0
    iget-object p3, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, p3, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lcom/qualcomm/ims/vt/Camera2;->mSensorOrientation:I

    .line 92
    iget-object p3, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, p3, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraFacing:I

    .line 94
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSensorOrientation:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cameraFacing = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraFacing:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    new-instance p3, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-direct {p3, p1}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    .line 98
    new-instance p1, Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 99
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->getDefaultPreviewSize()Landroid/util/Size;

    move-result-object p3

    const/16 v0, 0x14

    const/4 v1, 0x2

    invoke-direct {p1, p3, v0, v1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;-><init>(Landroid/util/Size;II)V

    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    const-string p1, "Ctor: NullPointerException - getDefaultPreviewSize"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0, p2}, Lcom/qualcomm/ims/vt/Camera2;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 104
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Ctor: Exception: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, p2}, Lcom/qualcomm/ims/vt/Camera2;->notifyOnError(I)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 102
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->notifyOnError(I)V

    .line 110
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->reset()V

    return-void
.end method

.method private abortCaptures()V
    .locals 3

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "abortCaptures: Aborting captures..., id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 701
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 702
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v0, 0x0

    .line 703
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "abortCaptures: Failed to abort capture, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    :cond_0
    return-void
.end method

.method static adjustRotationCounterclockwise(I)I
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v0, :cond_0

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustRotationCounterclockwise: Invalid rotation value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    return p0
.end method

.method private build(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 543
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 544
    new-array p0, v1, [Landroid/hardware/camera2/CaptureRequest;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 550
    :goto_0
    iget v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mFrameSkippingRate:I

    const-string v3, "build: Exception "

    if-ge v1, v2, :cond_1

    .line 552
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 554
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 560
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method static calculateRotation(ILcom/qualcomm/ims/vt/Camera$ConfigIms;Z)I
    .locals 3

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "calculateRotation mSensorOrientation ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cameraConfigIms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getOrientationMode()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 865
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "calculateRotation Portrait mode so rotating by "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    invoke-static {p0}, Lcom/qualcomm/ims/vt/Camera2;->getOutputConfigurationRotation(I)I

    move-result p0

    return p0

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 868
    invoke-static {p0, p1, p2}, Lcom/qualcomm/ims/vt/Camera2;->getCvoRotation(ILcom/qualcomm/ims/vt/Camera$ConfigIms;Z)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    if-ne v0, p0, :cond_2

    .line 870
    const-string p0, "calculateRotation Landscape mode no rotation"

    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private cancelSession()V
    .locals 3

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancelSession: Canceling session..., id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 716
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->genSessionId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 717
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 719
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v0, 0x0

    .line 720
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopSession: Failed to stop repeating session, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    :cond_0
    return-void
.end method

.method private clearStartRequest()V
    .locals 2

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearStartRequest: request="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 910
    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    return-void
.end method

.method private computeBestFps(I)Landroid/util/Range;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "computeBestFps "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "computeBestFps: Available FPS Ranges: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 579
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 578
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    .line 580
    array-length p0, v0

    const/4 v1, 0x1

    if-lt p0, v1, :cond_5

    const/4 p0, 0x0

    .line 584
    aget-object v1, v0, p0

    .line 585
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 586
    array-length v3, v0

    move v4, p0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .line 587
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v2, :cond_0

    move-object v1, v5

    move v2, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 594
    :cond_1
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 595
    array-length v2, v0

    :goto_1
    if-ge p0, v2, :cond_4

    aget-object v3, v0, p0

    .line 596
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    if-eq v4, v5, :cond_2

    goto :goto_2

    .line 597
    :cond_2
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, p1, :cond_3

    move-object v1, v3

    move p1, v4

    :cond_3
    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    return-object v1

    .line 581
    :cond_5
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
.end method

.method private doCreateCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 919
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 928
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    .line 929
    new-instance v0, Landroid/hardware/camera2/params/SessionConfiguration;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mContext:Landroid/content/Context;

    .line 931
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1, p2}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 932
    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    return-void

    .line 924
    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const-string p1, "Camera device is not ready (null)."

    invoke-direct {p0, v1, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 920
    :cond_1
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const-string p1, "Only one session request is allowed."

    invoke-direct {p0, v1, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private doStartPreview()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doStartPreview: surface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    const-string v1, "Error preview surface is null"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 787
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->clearStartRequest()V

    .line 788
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 790
    new-array v0, v1, [Landroid/hardware/camera2/params/OutputConfiguration;

    new-instance v1, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v1, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 793
    iput-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 794
    new-instance v1, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;

    iget v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;-><init>(Lcom/qualcomm/ims/vt/Camera2;I)V

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->doCreateCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 796
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startPreview: Failed to start preview, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 797
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    return-void
.end method

.method private doStartRecording()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const-string v0, "doStartRecording: shallComputeRotation="

    .line 802
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doStartRecording: Surface="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 804
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    const-string v2, "Error preview surface is null"

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 805
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    const-string v2, "Error recording surface is null"

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 808
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->clearStartRequest()V

    .line 809
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 811
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mContext:Landroid/content/Context;

    const v2, 0x7f010001

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Config;->isConfigEnabled(Landroid/content/Context;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 813
    iget v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mSensorOrientation:I

    iget-object v4, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 814
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isFacingFront()Z

    move-result v5

    .line 813
    invoke-static {v3, v4, v5}, Lcom/qualcomm/ims/vt/Camera2;->calculateRotation(ILcom/qualcomm/ims/vt/Camera$ConfigIms;Z)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 816
    :goto_0
    invoke-static {v3}, Lcom/qualcomm/ims/vt/Camera2;->adjustRotationCounterclockwise(I)I

    move-result v3

    .line 817
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " Camera2 API rotation="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;I)V

    const/4 v1, 0x2

    .line 821
    new-array v1, v1, [Landroid/hardware/camera2/params/OutputConfiguration;

    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v3, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 823
    iput-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 824
    new-instance v1, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;

    iget v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;-><init>(Lcom/qualcomm/ims/vt/Camera2;I)V

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->doCreateCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startRecording: Failed to start recording, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 827
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 828
    throw v0
.end method

.method private doStartRepeating(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 730
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 734
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doStartRepeating: Size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 737
    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {p0, p1, v2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    return-void

    .line 739
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p0, p1, v2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    return-void

    .line 731
    :cond_1
    new-instance p0, Lcom/qualcomm/ims/vt/Camera$CameraException;

    const-string p1, "Empty CaptureRequest"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera$CameraException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private exectutePendingRequests()V
    .locals 3

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exectutePendingRequests: request="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    :try_start_0
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 636
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->doStartRecording()V

    return-void

    .line 633
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->doStartPreview()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "exectutePendingRequests: Exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private failIfClosed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1007
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1009
    :cond_0
    const-string v0, "failIfClosed: Camera is closed...no operation is allowed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1010
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
.end method

.method private failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    .line 1016
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "failIfSurfaceNull: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1017
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method private genSessionId()I
    .locals 2

    .line 991
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 992
    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 994
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "generateSessionId: SessionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 995
    iget p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    return p0
.end method

.method private getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 648
    iget-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 649
    invoke-virtual {p0, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static getCvoRotation(ILcom/qualcomm/ims/vt/Camera$ConfigIms;Z)I
    .locals 2

    .line 877
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getHeight()I

    move-result p1

    const-string v1, "Camera2"

    if-ge v0, p1, :cond_0

    .line 878
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "calculateRotation CVO mode and w<h so rotating by "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-static {p0}, Lcom/qualcomm/ims/vt/Camera2;->getOutputConfigurationRotation(I)I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 p1, p0, 0x5a

    .line 885
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p0, p0, 0x10e

    .line 886
    rem-int/lit16 p0, p0, 0x168

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move p1, p0

    .line 888
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "calculateRotation CVO mode and w>=h so rotating by "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-static {p1}, Lcom/qualcomm/ims/vt/Camera2;->getOutputConfigurationRotation(I)I

    move-result p0

    return p0
.end method

.method private getDefaultPreviewSize()Landroid/util/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 354
    const-class v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method static getOutputConfigurationRotation(I)I
    .locals 1

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private isClosed()Z
    .locals 0

    .line 1003
    iget p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isOpened()Z
    .locals 1

    .line 936
    iget p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isOpening()Z
    .locals 1

    .line 999
    iget p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isRequestPending()Z
    .locals 0

    .line 987
    iget p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSupported(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;)Z"
        }
    .end annotation

    .line 657
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    .line 982
    const-string p1, "onConfigureFailed: onConfigureFailed."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 983
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    return-void
.end method

.method private onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConfigured: session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 971
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 973
    iget-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz p1, :cond_0

    .line 974
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 975
    iget-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->build(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->startRepeating(Ljava/util/List;)V

    return-void

    .line 977
    :cond_0
    const-string p1, "onConfigured: Builder is null."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private openFailure(Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 115
    iput p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    return-void
.end method

.method private reset()V
    .locals 2

    .line 187
    const-string v0, "reset"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x0

    .line 190
    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    .line 191
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    .line 192
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    .line 193
    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    .line 194
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    .line 195
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    .line 196
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    .line 197
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    .line 198
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 199
    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 200
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    .line 201
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSize:Landroid/util/Size;

    .line 202
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSize:Landroid/util/Size;

    return-void
.end method

.method private restartRepeating(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)V"
        }
    .end annotation

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "restartRepeating: Re-starting session... id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 765
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 766
    const-string v0, "restartRepeating: Stopping repeating session..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 768
    const-string v0, "restartRepeating: Starting repeating session..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->doStartRepeating(Ljava/util/List;)V

    return-void

    .line 771
    :cond_0
    const-string p1, "restartRepeating: Session is null."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "restartRepeating: Failed to start restart repeating session Ex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    return-void
.end method

.method private shallDefer()Z
    .locals 1

    .line 914
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private startRepeating(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)V"
        }
    .end annotation

    const-string v0, "startRepeating: session="

    .line 744
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startRepeating: Starting session..., id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_0

    .line 747
    const-string p1, "startRepeating: Session is null."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 752
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 753
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->doStartRepeating(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startRepeating: Failed to start repeating session, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    return-void
.end method

.method private updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3

    .line 608
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 610
    sget-object v0, Lcom/qualcomm/ims/vt/Camera2;->AV_TIMER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/ims/vt/Camera2;->isSupported(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 611
    const-string v2, "Enabling AV timer..."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    if-eqz v0, :cond_1

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting FPS_RANGE="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 620
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting CROP_REGION="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 622
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public canReconfigureWithActiveSession(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public close()V
    .locals 3

    .line 165
    const-string v0, "close"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "close: Failed to close camera preview/recording, exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->close()V

    .line 183
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->reset()V

    return-void
.end method

.method public getMaxZoom()F
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 318
    const-string v0, "getMaxZoom: Failed to retrieve Max Zoom, "

    .line 0
    const-string v1, "getMaxZoom: maxZoom="

    .line 318
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v2, v3}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0

    :catch_1
    move-exception v1

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    throw v1
.end method

.method public getMinZoom()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 336
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 337
    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 348
    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSensorOrientation()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public isFacingFront()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 309
    iget p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraFacing:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isOpen()Z
    .locals 0

    .line 473
    iget p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPreviewStarted()Z
    .locals 0

    .line 481
    iget-boolean p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    return p0
.end method

.method public isRecordingStarted()Z
    .locals 0

    .line 489
    iget-boolean p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    return p0
.end method

.method public isRestartNeededOnPreviewSurfaceSizeChanged(Landroid/view/Surface;)Z
    .locals 2

    .line 249
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object p1

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new preview size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cached previewSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSize:Landroid/util/Size;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isRestartNeededOnRecordingSurfaceSizeChanged(Landroid/view/Surface;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 256
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSize:Landroid/util/Size;

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object p1

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new recording size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cached recording size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSize:Landroid/util/Size;

    invoke-virtual {p0, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isZoomSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 301
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getMaxZoom()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public open()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 123
    const-string v0, "Exception="

    const-string v1, "open: Failed to open camera, id="

    const-string v2, "open: Failed to get camera id list. Exception="

    const-string v3, "open"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x3

    .line 129
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "open: Available camera IDs="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v4, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "open: camera is already opened, state"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 148
    :try_start_1
    iput v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    .line 149
    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v4, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    iget-object v5, p0, Lcom/qualcomm/ims/vt/Camera2;->mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 150
    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-virtual {v2}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->open()V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->openFailure(Ljava/lang/String;)V

    .line 156
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {p0, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0

    :catch_1
    move-exception v2

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->openFailure(Ljava/lang/String;)V

    .line 153
    throw v2

    .line 141
    :cond_1
    new-instance v0, Lcom/qualcomm/ims/vt/Camera$CameraException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect id, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/vt/Camera$CameraException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->openFailure(Ljava/lang/String;)V

    .line 135
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const-string v0, "Failed to get camera id list"

    invoke-direct {p0, v3, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_3
    move-exception v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/Camera2;->openFailure(Ljava/lang/String;)V

    .line 132
    throw v0
.end method

.method public reconfigure(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reconfigure "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->failIfClosed()V

    .line 279
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 280
    iget p1, p1, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->fps:I

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->computeBestFps(I)Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    .line 282
    iget-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 284
    iget-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->build(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->restartRepeating(Ljava/util/List;)V

    return-void

    .line 286
    :cond_0
    const-string p1, "Reconfiguration is deferred."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setRecorderFrameRate(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getFps()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 507
    const-string p1, "setRecorderFrameRate: Frame rate is greater than max allowed."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getFps()I

    move-result v0

    div-int/2addr v0, p1

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mFrameSkippingRate:I

    .line 513
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->shallDefer()Z

    move-result p1

    const-string v0, "setRecorderFrameRate: Deferred."

    if-eqz p1, :cond_1

    .line 514
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result p1

    if-nez p1, :cond_2

    .line 520
    const-string p1, "setRecorderFrameRate: Deferred. Recording has not started."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 524
    :cond_2
    iget-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_3

    .line 525
    iget-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 526
    iget-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->build(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->restartRepeating(Ljava/util/List;)V

    return-void

    .line 528
    :cond_3
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setZoom(F)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setZoom "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->failIfClosed()V

    .line 213
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getMinZoom()F

    move-result v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getMaxZoom()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setZoom: ActiveArraySize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 225
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 226
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 231
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr p1, v5

    div-float/2addr v4, p1

    float-to-int v4, v4

    .line 232
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int p1, v0

    sub-int v0, v2, v4

    sub-int v5, v3, p1

    add-int/2addr v2, v4

    add-int/2addr v3, p1

    .line 235
    invoke-virtual {v1, v0, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setZoom: CropRegionSize="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iput-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    .line 239
    iget-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 241
    iget-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->build(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->restartRepeating(Ljava/util/List;)V

    return-void

    .line 243
    :cond_0
    const-string p1, "Setting zoom is deferred."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 214
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setZoom: incorrect zoom value. v="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
.end method

.method public startPreview(Landroid/view/Surface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startPreview, surface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    const-string p1, "startPreview: Preview has already started."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->failIfClosed()V

    .line 370
    const-string v0, "Error preview surface is null"

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 372
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSize:Landroid/util/Size;

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startPreview: cached preview size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 375
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    .line 376
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->genSessionId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 378
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->shallDefer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startPreview: Deferring startPreview request, currRequest="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    iput p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    return-void

    .line 383
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->doStartPreview()V

    return-void
.end method

.method public startRecording(Landroid/view/Surface;Landroid/view/Surface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startRecording: PreviewSurface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " RecordingSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const-string p1, "startRecording: Recording has already started."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 422
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->failIfClosed()V

    .line 423
    const-string v0, "Error preview surface is null"

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 424
    const-string v0, "Error recording surface is null"

    invoke-direct {p0, p2, v0}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 427
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSize:Landroid/util/Size;

    .line 428
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSize:Landroid/util/Size;

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startRecording: preview size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " recording size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    iput-object p2, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    .line 432
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    const/4 p1, 0x1

    .line 433
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    .line 434
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->genSessionId()I

    move-result p1

    iput p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 436
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->shallDefer()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 437
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "startRecording: Deferring startRecording request, currRequest="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 439
    iput p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    goto :goto_0

    .line 441
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->doStartRecording()V

    .line 443
    :goto_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->onRecordingStarted()V

    return-void
.end method

.method public stopPreview()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 392
    const-string v0, "stopPreview"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 399
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    .line 400
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->clearStartRequest()V

    .line 401
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->cancelSession()V

    if-eqz v0, :cond_1

    .line 404
    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->onRecordingStopped()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopRecording()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 451
    const-string v0, "stopRecording"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 457
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    .line 458
    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    if-eqz v1, :cond_1

    .line 459
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    .line 460
    const-string v0, "stopRecording: reset preview flag"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->startPreview(Landroid/view/Surface;)V

    goto :goto_0

    .line 463
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->cancelSession()V

    .line 465
    :goto_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->onRecordingStopped()V

    return-void
.end method
