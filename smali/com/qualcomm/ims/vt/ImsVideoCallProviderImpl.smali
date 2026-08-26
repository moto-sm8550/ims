.class public Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
.super Landroid/telephony/ims/ImsVideoCallProvider;
.source "ImsVideoCallProviderImpl.java"

# interfaces
.implements Lorg/codeaurora/ims/QImsSessionBase$Listener;
.implements Lcom/qualcomm/ims/vt/ImsVideoCallProviderBase;


# static fields
.field private static final DBG:Z = true

.field private static final DELAY_BEFORE_SENDING_MS:I = 0xea60

.field public static final EVENT_POLL_DATAUSAGE:I = 0x2

.field private static final EVENT_SEND_SESSION_MODIFY_CALL_CONFIRM_DONE:I = 0x1

.field private static final EVENT_SEND_SESSION_MODIFY_REQUEST_DONE:I = 0x0

.field private static final STREAM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VideoCall_ImsVideoCallProviderImpl"

.field private static mStartDatausagePolling:Z = false


# instance fields
.field private lastDataUsage:[J

.field private mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field private mCamera:Lcom/qualcomm/ims/vt/CameraController;

.field private mHandler:Landroid/os/Handler;

.field private mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

.field private mIsOpen:Z

.field private mMedia:Lcom/qualcomm/ims/vt/MediaController;

.field mRequestProfile:Landroid/telecom/VideoProfile;

.field mResponseProfile:Landroid/telecom/VideoProfile;


# direct methods
.method static bridge synthetic -$$Nest$mhandleDataUsagePoll(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleDataUsagePoll(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSessionModifyConfirmDone(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleSessionModifyConfirmDone(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSessionModifyDone(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleSessionModifyDone(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 2

    .line 65
    invoke-direct {p0}, Landroid/telephony/ims/ImsVideoCallProvider;-><init>()V

    const/4 v0, 0x4

    .line 61
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImsVideocallProviderImpl instance created callSession="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " imsCallMod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 69
    invoke-static {}, Lcom/qualcomm/ims/vt/CameraController;->getInstance()Lcom/qualcomm/ims/vt/CameraController;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    .line 70
    invoke-static {}, Lcom/qualcomm/ims/vt/MediaController;->getInstance()Lcom/qualcomm/ims/vt/MediaController;

    move-result-object p1

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    .line 71
    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    .line 73
    new-instance p1, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl$1;-><init>(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private anyNegative([J)Z
    .locals 5

    const/4 p0, 0x0

    move v0, p0

    .line 372
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 373
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method private handleDataUsagePoll(Landroid/os/Message;)V
    .locals 2

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleDataUsagePoll msg.what="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->onRequestCallDataUsage()V

    .line 303
    sget-boolean p1, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 305
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private handleSessionModifyConfirmDone(Landroid/os/Message;)V
    .locals 3

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleSessionModifyConfirmDone msg.what="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 237
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    if-eqz p1, :cond_1

    .line 242
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/telecom/VideoProfile;

    .line 243
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 244
    const-string p1, "Session modify confirm success"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 246
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 247
    invoke-virtual {v0}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p1

    const/16 v1, 0x1b

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    .line 248
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object p1, p1, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setDualVtCallExtra(Z)V

    goto :goto_0

    .line 251
    :cond_0
    const-string v0, "Session modify confirm error"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 252
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(Ljava/lang/Throwable;)I

    move-result v2

    .line 253
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object p1, p1, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 254
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result p1

    const/4 v0, 0x4

    .line 253
    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v0

    goto :goto_0

    .line 258
    :cond_1
    const-string p1, "handleSessionModifyConfirmDone: null message object"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v0, 0x0

    .line 260
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, v2, p1, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    return-void
.end method

.method private handleSessionModifyDone(Landroid/os/Message;)V
    .locals 4

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleSessionModifyDone msg.what="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 268
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 271
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    .line 273
    const-string p1, "Session modify success"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 275
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    move p1, v0

    goto :goto_0

    .line 277
    :cond_0
    const-string v1, "Session modify error"

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    .line 278
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(Ljava/lang/Throwable;)I

    move-result p1

    .line 279
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 280
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    const/4 v2, 0x4

    .line 279
    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsCallUtils;->convertToVideoProfile(II)Landroid/telecom/VideoProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    goto :goto_0

    .line 284
    :cond_1
    const-string p1, "handleSessionModifyDone:null message object"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 286
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    const/16 v2, 0x1b

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 288
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isDualVideoCall()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 291
    :goto_1
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    .line 293
    :goto_2
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setDualVtCallExtra(Z)V

    .line 295
    :cond_4
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mResponseProfile:Landroid/telecom/VideoProfile;

    invoke-virtual {p0, p1, v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    return-void
.end method

.method private isSessionValid()Z
    .locals 3

    .line 542
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    if-nez v0, :cond_0

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session is closed."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z
    .locals 2

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isVideoPauseRequested requestProfile="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p0

    invoke-static {p0}, Landroid/telecom/VideoProfile;->isPaused(I)Z

    move-result p0

    return p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 550
    const-string v0, "VideoCall_ImsVideoCallProviderImpl"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->logString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "null"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    .line 554
    const-string v0, "VideoCall_ImsVideoCallProviderImpl"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->logString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public answerDualVtRequest(Landroid/os/Message;ZI)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasMediaIdValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/qualcomm/ims/vt/MediaController;->answerDualVtRequest(Landroid/os/Message;ZII)V

    return-void

    .line 138
    :cond_0
    const-string p1, "answerDualVtRequest invalid mediaId"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public dualVtRequest(Landroid/os/Message;I)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasMediaIdValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/ims/vt/MediaController;->dualVtRequest(Landroid/os/Message;II)V

    return-void

    .line 129
    :cond_0
    const-string p1, "dualVtRequest invalid mediaId"

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public enableArMode(Ljava/lang/String;)V
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableArMode camera id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/MediaController;->enableArMode(Ljava/lang/String;I)V

    return-void
.end method

.method getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 0

    .line 534
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getNegotiatedFps()I
    .locals 1

    .line 121
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/MediaController;->getNegotiatedFps(I)I

    move-result p0

    return p0
.end method

.method isOpen()Z
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " isOpen "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 144
    iget-boolean p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    return p0
.end method

.method public onActive(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 2

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActive session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 512
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getVideoStateFromImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)I

    move-result p1

    .line 513
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 514
    sput-boolean p1, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    .line 515
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 516
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 518
    :cond_0
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 519
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 521
    sput-boolean p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    return-void
.end method

.method public onCallDataUsageChanged(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 17

    move-object/from16 v0, p0

    .line 349
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallDataUsageChanged: dataUsage = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteTxDataUsage()J

    move-result-wide v3

    iget-object v1, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    const/4 v5, 0x0

    aget-wide v6, v1, v5

    sub-long/2addr v3, v6

    .line 355
    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteRxDataUsage()J

    move-result-wide v6

    iget-object v1, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    const/4 v8, 0x1

    aget-wide v9, v1, v8

    sub-long/2addr v6, v9

    .line 357
    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanTxDataUsage()J

    move-result-wide v9

    iget-object v1, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    const/4 v11, 0x2

    aget-wide v12, v1, v11

    sub-long/2addr v9, v12

    .line 359
    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanRxDataUsage()J

    move-result-wide v12

    iget-object v1, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    const/4 v14, 0x3

    aget-wide v15, v1, v14

    sub-long/2addr v12, v15

    const/4 v1, 0x4

    new-array v1, v1, [J

    aput-wide v3, v1, v5

    aput-wide v6, v1, v8

    aput-wide v9, v1, v11

    aput-wide v12, v1, v14

    .line 361
    invoke-direct {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->anyNegative([J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 362
    iget-object v3, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    new-instance v4, Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    invoke-direct {v4, v1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;-><init>([J)V

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->onCallDataUsageChanged(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V

    .line 363
    iget-object v1, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteTxDataUsage()J

    move-result-wide v3

    aput-wide v3, v1, v5

    .line 364
    iget-object v1, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getLteRxDataUsage()J

    move-result-wide v3

    aput-wide v3, v1, v8

    .line 365
    iget-object v1, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanTxDataUsage()J

    move-result-wide v3

    aput-wide v3, v1, v11

    .line 366
    iget-object v0, v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->lastDataUsage:[J

    invoke-virtual {v2}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->getWlanRxDataUsage()J

    move-result-wide v1

    aput-wide v1, v0, v14

    return-void

    .line 368
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Negative delta:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public onCallModifyInitiated(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 0

    return-void
.end method

.method public onCallTypeChanging(Lorg/codeaurora/ims/QImsSessionBase;I)V
    .locals 0

    return-void
.end method

.method public onClosed(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 1

    const/4 p1, 0x0

    .line 472
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    const/4 v0, 0x0

    .line 473
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    .line 474
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 475
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    .line 476
    sput-boolean p1, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    return-void
.end method

.method public onDisconnected(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 2

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDisconnected session"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 467
    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mIsOpen:Z

    return-void
.end method

.method public onHold(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 2

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onHold session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 528
    sput-boolean p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mStartDatausagePolling:Z

    return-void
.end method

.method public onRecordingDisabled()V
    .locals 1

    .line 426
    const-string v0, "onRecordingDisabled "

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 428
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateRecordingDisabled()V

    return-void
.end method

.method public onRecordingEnabled()V
    .locals 1

    .line 420
    const-string v0, "onRecordingEnabled "

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 421
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 422
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateRecordingEnabled()V

    return-void
.end method

.method public onRequestCallDataUsage()V
    .locals 3

    .line 436
    const-string v0, "onRequestCallDataUsage"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 437
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v0

    .line 440
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasMediaIdValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/ims/vt/MediaController;->requestCallDataUsage(II)V

    return-void

    .line 443
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRequestCallDataUsage: Invalid MediaId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestCameraCapabilities()V
    .locals 2

    .line 336
    const-string v0, "onRequestCameraCapabilities"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 337
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/CameraController;->getCameraCapabilities(I)Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 341
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    return-void

    .line 343
    :cond_1
    const-string v0, "Error onRequestCameraCapabilities camera capabilities is null"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 2

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onSendSessionModifyRequest, videoState="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " quality= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 213
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 215
    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 216
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isVideoPauseRequested(Landroid/telecom/VideoProfile;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 220
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 p1, 0x6

    invoke-virtual {p0, v0, p1, v0}, Lorg/codeaurora/ims/ImsCallModification;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    return-void

    .line 221
    :cond_1
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallModification;->isVideoPauseRequested()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 223
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 p1, 0x7

    invoke-virtual {p0, v0, p1, v0}, Lorg/codeaurora/ims/ImsCallModification;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    return-void

    .line 226
    :cond_2
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 227
    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result p2

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->convertVideoStateToCallType(I)I

    move-result p2

    .line 228
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsCallModification;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    return-void
.end method

.method public onSendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 3

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSendSessionModifyResponse, responseProfile state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " quality= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 324
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->convertVideoStateToCallType(I)I

    move-result v0

    .line 325
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 328
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/codeaurora/ims/ImsCallModification;->acceptConnectionTypeChange(ILjava/util/Map;Landroid/os/Message;)V

    return-void
.end method

.method public onSetCamera(Ljava/lang/String;)V
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetCamera, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    invoke-virtual {v1, p1, p0, v0}, Lcom/qualcomm/ims/vt/CameraController;->open(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    return-void

    .line 160
    :cond_1
    iget-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/qualcomm/ims/vt/CameraController;->close(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    return-void
.end method

.method public onSetDeviceOrientation(I)V
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetDeviceOrientation, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/MediaController;->setDeviceOrientation(II)V

    return-void
.end method

.method public onSetDisplaySurface(Landroid/view/Surface;)V
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetDisplaySurface, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/MediaController;->setDisplaySurface(Landroid/view/Surface;I)V

    return-void
.end method

.method public onSetPauseImage(Landroid/net/Uri;)V
    .locals 3

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetPauseImage, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 454
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    .line 456
    invoke-static {}, Lcom/qualcomm/ims/vt/MediaController;->getInstance()Lcom/qualcomm/ims/vt/MediaController;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Ljava/lang/String;I)V

    :cond_0
    return-void

    .line 459
    :cond_1
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {p0, v2, v1}, Lcom/qualcomm/ims/vt/MediaController;->setPauseImage(Ljava/lang/String;I)V

    return-void
.end method

.method public onSetPreviewSurface(Landroid/view/Surface;)V
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetPreviewSurface, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->getCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->setPreviewSurface(Landroid/view/Surface;Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    return-void
.end method

.method public onSetZoom(F)V
    .locals 2

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSetZoom, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCamera:Lcom/qualcomm/ims/vt/CameraController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/ims/vt/CameraController;->setZoom(FI)V

    return-void
.end method

.method public onUnsolCallModify(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 2

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUnsolCallModify session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " callModify= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 486
    iget-object p1, p2, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 487
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result p1

    .line 488
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 489
    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mRequestProfile:Landroid/telecom/VideoProfile;

    .line 490
    invoke-virtual {p2}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 492
    iget p1, p2, Lorg/codeaurora/ims/CallModify;->error:I

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsErrorToUiError(I)I

    move-result p1

    const/4 p2, 0x0

    .line 493
    invoke-virtual {p0, p1, v0, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    return-void

    .line 495
    :cond_0
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    return-void
.end method

.method public onUpdateOrientationMode(I)V
    .locals 2

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpdateOrientationMode orientation mode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 403
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 404
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateOrientationMode(I)V

    return-void
.end method

.method public onUpdatePeerDimensions(II)V
    .locals 2

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpdatePeerDimensions width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 383
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changePeerDimensions(II)V

    return-void
.end method

.method public onUpdateRecorderFrameRate(I)V
    .locals 2

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpdateRecorderFrameRate = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 415
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 416
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateRecorderFrameRate(I)V

    return-void
.end method

.method public onUpdateRecordingSurface(Landroid/view/Surface;II)V
    .locals 2

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpdateRecordingSurface recording surface = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mCallSession:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateRecordingSurface(Landroid/view/Surface;II)V

    return-void
.end method

.method public onUpdateVideoQuality(I)V
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpdateVideoQuality video quality is="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 396
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 398
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changeVideoQuality(I)V

    return-void
.end method

.method public sendCameraStatus(Z)V
    .locals 1

    .line 387
    const-string v0, "sendCameraFailure"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    .line 391
    :goto_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->handleCallSessionEvent(I)V

    return-void
.end method

.method public setLocalRenderingDelay(I)V
    .locals 1

    .line 116
    const-string v0, "setLocalRenderingDelay"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 117
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/MediaController;->setLocalRenderingDelay(I)V

    return-void
.end method

.method public setSharedDisplayParams(II)V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSharedDisplayParams: width = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qualcomm/ims/vt/MediaController;->setSharedDisplayParams(III)V

    return-void
.end method

.method public stopScreenShare()V
    .locals 1

    .line 106
    const-string v0, "stopScreenShare"

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->log(Ljava/lang/String;)V

    .line 107
    iget-object p0, p0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->mMedia:Lcom/qualcomm/ims/vt/MediaController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/MediaController;->stopScreenShare(I)V

    return-void
.end method
