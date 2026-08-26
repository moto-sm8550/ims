.class public Lcom/qualcomm/ims/vt/ImsCamera;
.super Lcom/qualcomm/ims/vt/Camera;
.source "ImsCamera.java"


# static fields
.field private static final DBG:Z = true

.field private static final IMS_CAMERA_OPERATION_SUCCESS:S = 0x0s

.field private static final INVALID_SIZE:Landroid/util/Size;

.field private static final TAG:Ljava/lang/String; = "ImsCamera"


# instance fields
.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

.field private mIsOpen:Z

.field private mIsPreviewStarted:Z

.field private mIsRecordingStarted:Z

.field private mPackageName:Ljava/lang/String;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Landroid/util/Size;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/qualcomm/ims/vt/ImsCamera;->INVALID_SIZE:Landroid/util/Size;

    .line 36
    const-string v0, "imscamera_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/Camera;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPackageName:Ljava/lang/String;

    .line 69
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mContext:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mWindowManager:Landroid/view/WindowManager;

    .line 70
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mContext:Landroid/content/Context;

    const-string p2, "camera"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsOpen:Z

    .line 73
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    .line 74
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    .line 77
    :try_start_0
    new-instance p1, Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getDefaultPreviewSize()Landroid/util/Size;

    move-result-object p2

    const/16 p3, 0x14

    const/4 v0, 0x2

    invoke-direct {p1, p2, p3, v0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;-><init>(Landroid/util/Size;II)V

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 83
    :catch_0
    const-string p1, "Ctor: NullPointerException - getDefaultPreviewSize"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsCamera;->notifyOnError(I)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Ctor: Exception: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doStopPreview()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 321
    const-string v0, "doStopPreview"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_stopPreview()S

    move-result v1

    .line 323
    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 327
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    return-void

    .line 325
    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
.end method

.method private doStopRecording()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 331
    const-string v0, "doStopRecording"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_stopRecording()S

    move-result v1

    .line 333
    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 337
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    return-void

    .line 335
    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
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

    .line 457
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 458
    invoke-virtual {p0, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultPreviewSize()Landroid/util/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 106
    const-class v0, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method private logIfError(Ljava/lang/String;S)V
    .locals 1

    if-eqz p2, :cond_0

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed with error="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static native native_open(I)S
.end method

.method public static native native_open(ILjava/lang/String;)S
.end method

.method private setDisplayOrientation()V
    .locals 3

    .line 465
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 466
    const-string v0, "WindowManager not available"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 470
    :cond_0
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 494
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 495
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 496
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 497
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    .line 498
    rem-int/lit16 v0, v0, 0x168

    goto :goto_0

    .line 500
    :cond_1
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 503
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDisplayOrientation rotation="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setDisplayOrientation(I)S

    move-result v0

    .line 505
    const-string v1, "setDisplayOrientation"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    return-void
.end method

.method private setFrameDimension(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 210
    const-string v0, "setPreviewSize"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setPreviewSize(II)S

    move-result p1

    .line 216
    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    return-void

    .line 212
    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
.end method

.method private setPreviewFps(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 225
    const-string v0, "setPreviewFps"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_0

    int-to-short p1, p1

    .line 230
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setPreviewFpsRange(S)S

    move-result p1

    .line 231
    const-string v0, "setPreviewFpsRange"

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    return-void

    .line 227
    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
.end method


# virtual methods
.method public canReconfigureWithActiveSession(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public close()V
    .locals 3

    .line 134
    const-string v0, "close"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const-string v0, "close: Camera is already closed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "close: Failed to close camera preview/recording, exception="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    :goto_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_release()S

    move-result v0

    .line 147
    const-string v1, "release"

    invoke-direct {p0, v1, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsOpen:Z

    .line 150
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    .line 151
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    return-void
.end method

.method public getMaxZoom()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_getMaxZoom()I

    move-result v0

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMaxZoom result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p0, v0

    return p0

    .line 254
    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
.end method

.method public getMinZoom()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 268
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

    .line 95
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getSize()Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method public getSensorOrientation()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 437
    const-string v0, "getSensorOrientation: Failed to retrieve sensor orientation, "

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mCameraId:Ljava/lang/String;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v1, v2}, Lcom/qualcomm/ims/vt/ImsCamera;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v1

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0

    :catch_1
    move-exception v1

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    throw v1
.end method

.method public isFacingFront()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 279
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 284
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isFacingFront info.facing="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 286
    iget p0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 280
    :cond_1
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
.end method

.method public isOpen()Z
    .locals 0

    .line 412
    iget-boolean p0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsOpen:Z

    return p0
.end method

.method public isPreviewStarted()Z
    .locals 0

    .line 420
    iget-boolean p0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    return p0
.end method

.method public isRecordingStarted()Z
    .locals 0

    .line 428
    iget-boolean p0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    return p0
.end method

.method public isRestartNeededOnPreviewSurfaceSizeChanged(Landroid/view/Surface;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRestartNeededOnRecordingSurfaceSizeChanged(Landroid/view/Surface;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZoomSupported()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 239
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_isZoomSupported()Z

    move-result v0

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isZoomSupported result="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    .line 240
    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
.end method

.method public native native_getMaxZoom()I
.end method

.method public native native_isZoomSupported()Z
.end method

.method public native native_release()S
.end method

.method public native native_setDisplayOrientation(I)S
.end method

.method public native native_setPreviewFpsRange(S)S
.end method

.method public native native_setPreviewSize(II)S
.end method

.method public native native_setPreviewTexture(Landroid/view/Surface;)S
.end method

.method public native native_setZoom(I)V
.end method

.method public native native_startPreview()S
.end method

.method public native native_startRecording()S
.end method

.method public native native_stopPreview()S
.end method

.method public native native_stopRecording()S
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 114
    const-string v0, "open"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "open: Camera is already open."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->native_open(ILjava/lang/String;)S

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsOpen:Z

    return-void

    .line 123
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "open: error="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
.end method

.method public reconfigure(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reconfigure "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getFps()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsCamera;->setPreviewFps(I)V

    .line 199
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/ImsCamera;->setFrameDimension(II)V

    .line 200
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    return-void

    .line 195
    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
.end method

.method public setRecorderFrameRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 452
    const-string p1, "setRecorderFrameRate: Not supported."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setZoom(F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setZoom "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getMinZoom()F

    move-result v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->getMaxZoom()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    float-to-int p1, p1

    .line 170
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setZoom(I)V

    return-void

    .line 166
    :cond_0
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0

    .line 162
    :cond_1
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
.end method

.method public startPreview(Landroid/view/Surface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startPreview: Surface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isOpen()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    .line 298
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    const-string p1, "startPreview: Camera preview already started."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 303
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    .line 304
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsCamera;->native_setPreviewTexture(Landroid/view/Surface;)S

    move-result p1

    .line 305
    const-string v0, "setPreviewTexture"

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    if-nez p1, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_startPreview()S

    move-result p1

    .line 309
    const-string v0, "startPreview"

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    .line 311
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->setDisplayOrientation()V

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 314
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsPreviewStarted:Z

    return-void

    .line 316
    :cond_2
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0

    .line 296
    :cond_3
    const-string p1, "startPreview: Error camera is closed"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {p0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
.end method

.method public startRecording(Landroid/view/Surface;Landroid/view/Surface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startRecording: PreviewSurface="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " RecordingSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 368
    const-string p1, "startRecording: Camera recording already started."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 372
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    const/4 p2, 0x3

    if-eqz p1, :cond_3

    .line 378
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 379
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsCamera;->startPreview(Landroid/view/Surface;)V

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->native_startRecording()S

    move-result p1

    .line 383
    const-string v0, "startRecording"

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/ImsCamera;->logIfError(Ljava/lang/String;S)V

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 387
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsCamera;->mIsRecordingStarted:Z

    return-void

    .line 385
    :cond_2
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {p0, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0

    .line 374
    :cond_3
    const-string p1, "startRecording: Preview surface is null."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    new-instance p0, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {p0, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw p0
.end method

.method public stopPreview()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    const-string v0, "stopPreview: Camera preview already stopped."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 350
    :cond_0
    const-string v0, "stopPreview"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->doStopRecording()V

    .line 355
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->doStopPreview()V

    return-void
.end method

.method public stopRecording()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 395
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    const-string v0, "stopRecording: Camera recording already stopped."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 400
    :cond_0
    const-string v0, "stopRecording"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->doStopRecording()V

    .line 402
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsCamera;->doStopPreview()V

    :cond_1
    return-void
.end method
