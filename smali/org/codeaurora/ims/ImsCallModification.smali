.class public Lorg/codeaurora/ims/ImsCallModification;
.super Ljava/lang/Object;
.source "ImsCallModification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsCallModification$PauseState;,
        Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;
    }
.end annotation


# static fields
.field static final EVENT_AVP_UPGRADE_DONE:I = 0x5

.field static final EVENT_MODIFY_CALL_CONFIRM_DONE:I = 0x8

.field static final EVENT_MODIFY_CALL_INITIATE_DONE:I = 0x6

.field static final EVENT_VIDEO_PAUSE_DONE:I = 0x7

.field static final EVENT_VIDEO_PAUSE_RETRY:I = 0x9

.field private static final MAX_MULTITASK_RETRIES:I = 0x1

.field static final PAUSE_DELAY_MILLIS:I = 0xbb8


# instance fields
.field private mAvpCallType:I

.field private mAvpRetryAllowed:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field public mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field public mIndex:I

.field private mIsCarMode:Z

.field private mIsLocallyPaused:Z

.field private mIsVideoPauseRequested:Z

.field private mMultiTaskRetryCount:I

.field private mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

.field private mPhoneId:I

.field private mPrevVideoCallType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallModifyRequest(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/CallModify;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsCarMode(Lorg/codeaurora/ims/ImsCallModification;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsCarMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;)I
    .locals 0

    iget p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)Lorg/codeaurora/ims/ImsCallModification$PauseState;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsCarMode(Lorg/codeaurora/ims/ImsCallModification;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsCarMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsLocallyPaused(Lorg/codeaurora/ims/ImsCallModification;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMultiTaskRetryCount(Lorg/codeaurora/ims/ImsCallModification;I)V
    .locals 0

    iput p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearPendingModify(Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateAndSendMultiTaskRequest(Lorg/codeaurora/ims/ImsCallModification;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->createAndSendMultiTaskRequest(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessPendingVTMultitask(Lorg/codeaurora/ims/ImsCallModification;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->processPendingVTMultitask()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldRetryVideoPause(Lorg/codeaurora/ims/ImsCallModification;)Z
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->shouldRetryVideoPause()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdatePreviousVTCallType(Lorg/codeaurora/ims/ImsCallModification;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->updatePreviousVTCallType(I)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 1

    .line 125
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codeaurora/ims/ImsCallModification;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V
    .locals 3

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    const/16 v1, 0xa

    .line 59
    iput v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    const/4 v2, 0x1

    .line 60
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpRetryAllowed:Z

    .line 61
    iput v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    .line 62
    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    .line 78
    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    .line 81
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    .line 84
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    .line 91
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsCarMode:Z

    .line 92
    new-instance v0, Lorg/codeaurora/ims/ImsCallModification$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallModification$1;-><init>(Lorg/codeaurora/ims/ImsCallModification;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ImsCallModification instance created imsCallSessionImpl="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iput-object p3, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 133
    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    .line 134
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 135
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getPhoneId()I

    move-result p1

    iput p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    .line 136
    new-instance p1, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;

    invoke-direct {p1, p0, p4}, Lorg/codeaurora/ims/ImsCallModification$ImsCallModificationHandler;-><init>(Lorg/codeaurora/ims/ImsCallModification;Landroid/os/Looper;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    .line 138
    new-instance p1, Landroid/content/IntentFilter;

    sget-object p2, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 139
    sget-object p2, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    const-string p1, "Registering car mode receiver"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->getSystemCarMode()Z

    move-result p1

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsCarMode:Z

    return-void
.end method

.method private areCallTypesSame(I)Z
    .locals 2

    .line 185
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 186
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isDualVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const-string v0, "areCallTypesSame - setting calltype to dual vt call"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1d

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private canModifyRttCallType(I)Z
    .locals 7

    .line 870
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 871
    iget v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttSupportedOnVtCalls(ILandroid/content/Context;)Z

    move-result v1

    .line 872
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v2

    .line 873
    invoke-static {v0}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 874
    invoke-static {p1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v4

    goto :goto_0

    :cond_0
    move p1, v5

    .line 875
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "fromCallType: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isRttCall: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isVideoRttSupported: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isVideoUpgradeRequest"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return v5

    :cond_2
    :goto_1
    return v4
.end method

.method private clearPendingModify()V
    .locals 2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearPendingModify imsconn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 413
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    return-void
.end method

.method private clearPendingVTMultiTask()V
    .locals 2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearPendingVTMultiTask imsconn="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    sget-object v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    return-void
.end method

.method private createAndSendMultiTaskRequest(I)V
    .locals 2

    .line 168
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    return-void
.end method

.method private getSystemCarMode()Z
    .locals 2

    .line 112
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    const-string v0, "uimode"

    .line 113
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/UiModeManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static hasError(Lorg/codeaurora/ims/CallModify;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 280
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isDualVtRequest(I)Z
    .locals 0

    .line 576
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isDualVtCallType(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isDualVideoCall()Z

    move-result p0

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

.method private isIndexValid()Z
    .locals 0

    .line 194
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallIdInt()I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isOldAndNewPauseRequestSame()Z
    .locals 3

    .line 374
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isOldAndNewPauseRequestSame Unexpectedly callModifyRequest:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 379
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v2, Lorg/codeaurora/ims/ImsCallModification$PauseState;->PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-eq v0, v2, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v2, Lorg/codeaurora/ims/ImsCallModification$PauseState;->RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 381
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isOldAndNewPauseRequestSame "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v1
.end method

.method private isUpgradeRequestForRtt(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 3

    .line 858
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 859
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 863
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "RTT: isUpgradeRequestForRtt rttMode = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 864
    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->isIndexValid()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private isVTMultitaskRequest(I)Z
    .locals 0

    const/4 p0, 0x6

    if-eq p1, p0, :cond_1

    const/4 p0, 0x7

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isValidCallModifyConfirmRequest(I)Z
    .locals 4

    .line 615
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 616
    const-string p1, "callModifyRequest is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    .line 620
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_1

    if-nez p1, :cond_2

    :cond_1
    return v2

    .line 627
    :cond_2
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object p0, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne p1, p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private isVideoCrbtCall(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 6

    .line 233
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->isCrbtCall()Z

    move-result v0

    .line 235
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 236
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 237
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    .line 238
    invoke-static {v1, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isVideoCrbtSupported(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v4

    .line 239
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "isCrbtCall: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isCrbtCallBackwardCompatibility: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 241
    :cond_2
    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 243
    const-string p1, "This is Video CRBT call"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v3

    :cond_3
    return v4
.end method

.method private isVisualizedVoiceCall(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 1

    .line 250
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->isVisualizedVoiceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 252
    const-string p1, "This is Visualized Voice call"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 581
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->isDualVtRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 583
    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isValidRilModifyCallType(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 584
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "modifyCallInitiate not a valid CallType"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 592
    :cond_0
    new-instance v1, Lorg/codeaurora/ims/CallDetails;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v2

    .line 593
    invoke-static {p3}, Lorg/codeaurora/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p2, v2, p3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 594
    iget-object p3, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 596
    invoke-virtual {p3}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result p3

    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 598
    :cond_1
    new-instance p3, Lorg/codeaurora/ims/CallModify;

    iget v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    invoke-direct {p3, v1, v2}, Lorg/codeaurora/ims/CallModify;-><init>(Lorg/codeaurora/ims/CallDetails;I)V

    .line 600
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v1, :cond_2

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Overwriting callModifyRequest: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with callModify:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    :cond_2
    iput-object p3, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    .line 605
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1, p3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyCallModifyInitiate(Lorg/codeaurora/ims/CallModify;)V

    if-eqz v0, :cond_3

    .line 607
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->dualVtRequest(Landroid/os/Message;I)V

    return-void

    .line 609
    :cond_3
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {p0, p1, p3}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    return-void
.end method

.method private notifyVideoPaused(I)V
    .locals 2

    .line 517
    new-instance v0, Landroid/telecom/VideoProfile;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 518
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    return-void
.end method

.method private pendingPauseStatetoRilCallType()I
    .locals 2

    .line 175
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x4

    return p0

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-ne v0, v1, :cond_1

    .line 179
    iget p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    return p0

    :cond_1
    const/16 p0, 0xa

    return p0
.end method

.method private processPendingVTMultitask()V
    .locals 2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processPendingVTMultitask mPendingVTMultitask="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->isOldAndNewPauseRequestSame()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const-string v0, "Old and new Pause Request is Same so clearing Pending VT multitask"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingVTMultiTask()V

    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    sget-object v1, Lorg/codeaurora/ims/ImsCallModification$PauseState;->NONE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    if-eq v0, v1, :cond_2

    .line 400
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v0, :cond_1

    .line 401
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->pendingPauseStatetoRilCallType()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallModification;->createAndSendMultiTaskRequest(I)V

    .line 402
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingVTMultiTask()V

    return-void

    .line 404
    :cond_1
    const-string v0, "processPendingVTMultitask callModifyRequest not null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private retryAvpUpgrade(Z)V
    .locals 2

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "retryAvpUpgrade: AVPF failed so retrying using AVP. mAvpCallType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " shouldNotifyUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallIdInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    .line 525
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 526
    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/codeaurora/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 0

    .line 671
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 673
    invoke-static {p1, p2, p0}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object p0

    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 674
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private shouldRetryVideoPause()Z
    .locals 1

    .line 391
    iget p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    const/4 v0, 0x1

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private triggerOrQueueVTMultitask(I)V
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "triggerOrQueueVTMultitask callType= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " conn= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 160
    sget-object v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;->PAUSE:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    goto :goto_1

    :cond_1
    sget-object v0, Lorg/codeaurora/ims/ImsCallModification$PauseState;->RESUME:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    :goto_1
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    .line 161
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    .line 162
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez p1, :cond_2

    .line 163
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->processPendingVTMultitask()V

    :cond_2
    return-void
.end method

.method private updatePreviousVTCallType(I)V
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 533
    :cond_1
    :goto_0
    iput p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    .line 534
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Updating mPrevVideoCallType to "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private validateIncomingModifyConnectionType(I)Z
    .locals 5

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "validateIncomingModifyConnectionType newCallType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->areCallTypesSame(I)Z

    move-result p1

    .line 262
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->isIndexValid()Z

    move-result v0

    .line 267
    iget v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 268
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v1

    iget v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    invoke-virtual {v1, v3}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery(I)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 v2, 0x1

    .line 273
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "validateIncomingModifyConnectionType modifyToCurrCallType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isIndexValid = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isLowBattery = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return v2
.end method

.method private validateOutgoingModifyConnectionType(Landroid/os/Message;I)Z
    .locals 6

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "validateOutgoingModifyConnectionType newCallType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->areCallTypesSame(I)Z

    move-result v0

    .line 202
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->isIndexValid()Z

    move-result v1

    .line 203
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v2

    iget v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery(I)Z

    move-result v2

    .line 204
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->canModifyRttCallType(I)Z

    move-result p2

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 207
    :goto_0
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v4

    if-nez v4, :cond_1

    xor-int/lit8 v4, v2, 0x1

    and-int/2addr v3, v4

    .line 211
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "validateOutgoingModifyConnectionType modifyToCurrCallType = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isIndexValid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isLowBattery = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isRttCallModificationAllowed = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    if-nez v3, :cond_5

    const/4 p0, 0x0

    if-eqz v2, :cond_3

    .line 220
    new-instance p2, Lorg/codeaurora/ims/ImsRilException;

    const/16 v0, 0x32

    const-string v1, "Low Battery"

    invoke-direct {p2, v0, v1}, Lorg/codeaurora/ims/ImsRilException;-><init>(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 224
    new-instance p2, Ljava/lang/Exception;

    const-string v0, "Can\'t modify call."

    invoke-direct {p2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object p2, p0

    .line 226
    :goto_1
    invoke-static {p1, p0, p2}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    move-result-object p0

    iput-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 227
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    :goto_2
    return v3
.end method


# virtual methods
.method public acceptConnectionTypeChange(ILjava/util/Map;Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Confirming call type change request: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->isValidCallModifyConfirmRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "acceptConnectionTypeChange: MODIFY_CALL_CONFIRM with invalid calltype "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    invoke-virtual {p0, p3}, Lorg/codeaurora/ims/ImsCallModification;->rejectConnectionTypeChange(Landroid/os/Message;)V

    return-void

    .line 648
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v0, :cond_4

    .line 649
    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iput p1, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-eqz p2, :cond_1

    .line 651
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/CallDetails;->setExtrasFromMap(Ljava/util/Map;)V

    .line 654
    :cond_1
    iget-object p2, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p2, v0, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    const/16 p3, 0x1d

    if-ne p1, p3, :cond_2

    .line 656
    const-string p3, "answering dual vt upgrade request"

    invoke-static {p0, p3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->answerDualVtRequest(Landroid/os/Message;ZI)V

    return-void

    :cond_2
    const/4 p3, 0x3

    if-ne p1, p3, :cond_3

    .line 658
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 659
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isDualVideoCall()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 660
    const-string p1, "response to downgrade from dual video to bi-directional vt"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setDualVtCallExtra(Z)V

    .line 663
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    return-void

    .line 665
    :cond_3
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {p1, p2, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    :cond_4
    return-void
.end method

.method public changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changeConnectionType  newCallType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newExtras= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallIdInt()I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIndex:I

    .line 545
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->isVTMultitaskRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->triggerOrQueueVTMultitask(I)V

    return-void

    .line 550
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    iput p2, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    .line 554
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 555
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v1, :cond_4

    .line 556
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsCallModification;->isDualVtRequest(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 557
    invoke-direct {p0, v0, p2}, Lorg/codeaurora/ims/ImsCallModification;->validateOutgoingModifyConnectionType(Landroid/os/Message;I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return-void

    .line 558
    :cond_3
    :goto_0
    invoke-direct {p0, v0, p2, p3}, Lorg/codeaurora/ims/ImsCallModification;->modifyCallInitiate(Landroid/os/Message;ILjava/util/Map;)V

    return-void

    .line 561
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "videocall changeConnectionType: not invoking modifyCallInitiate as there is pending callModifyRequest="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    const-string p2, "Pending callModifyRequest so not sending modify request down"

    .line 567
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsCallModification;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 882
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 883
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 884
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v0, :cond_0

    .line 885
    sget v1, Lorg/codeaurora/ims/CallModify;->E_CANCELLED:I

    iput v1, v0, Lorg/codeaurora/ims/CallModify;->error:I

    .line 886
    const-string v0, "Cancel pending call modification before being closed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyUnsolCallModify(Lorg/codeaurora/ims/CallModify;)V

    .line 888
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    :cond_0
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 148
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getIsVideoPauseRequested()Z
    .locals 0

    .line 448
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    return p0
.end method

.method public getMultiTaskRetryCount()I
    .locals 0

    .line 433
    iget p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return p0
.end method

.method public getPendingModify()Lorg/codeaurora/ims/CallModify;
    .locals 0

    .line 418
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    return-object p0
.end method

.method public getPendingVTMultitask()Lorg/codeaurora/ims/ImsCallModification$PauseState;
    .locals 0

    .line 443
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPendingVTMultitask:Lorg/codeaurora/ims/ImsCallModification$PauseState;

    return-object p0
.end method

.method public getPrevVideoCallType()I
    .locals 0

    .line 428
    iget p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPrevVideoCallType:I

    return p0
.end method

.method public isAvpRetryAllowed()Z
    .locals 0

    .line 457
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpRetryAllowed:Z

    return p0
.end method

.method public isLocallyPaused()Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    return p0
.end method

.method public isVideoPauseRequested()Z
    .locals 0

    .line 853
    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    return p0
.end method

.method public onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V
    .locals 5

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceivedCallModify("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/codeaurora/ims/CallModify;->call_index:I

    iget v3, p1, Lorg/codeaurora/ims/CallModify;->call_index:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    .line 298
    invoke-virtual {v0}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget v3, p1, Lorg/codeaurora/ims/CallModify;->error:I

    iput v3, v0, Lorg/codeaurora/ims/CallModify;->error:I

    move v0, v2

    move v2, v1

    goto/16 :goto_3

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onReceivedModifyCall: Call Modify request not found.Dropping the Modify Call Request Failed. Cached Request: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Received Request:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v2

    goto :goto_3

    .line 309
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallModification;->isUpgradeRequestForRtt(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v0

    .line 312
    iget-object v3, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsCallModification;->validateIncomingModifyConnectionType(I)Z

    move-result v3

    .line 314
    iget-object v4, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallModification;->isVideoCrbtCall(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 315
    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsCallModification;->isVisualizedVoiceCall(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 320
    :cond_2
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v4, :cond_3

    .line 321
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    goto :goto_2

    .line 323
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "videocall onReceivedModifyCall: not notifying user about incoming modify call request as there is pending callModifyRequest="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "videocall onReceivedModifyCall: not notifying user aboutincoming modify call request as this is CRBT/UVS call. Don\'t cache the request: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    move v3, v2

    :goto_2
    if-nez v3, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    move v2, v1

    .line 330
    :cond_6
    iget-boolean v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsCarMode:Z

    if-nez v4, :cond_7

    if-nez v2, :cond_8

    :cond_7
    const/4 v2, 0x0

    .line 332
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsCallModification;->rejectConnectionTypeChange(Landroid/os/Message;)V

    :cond_8
    move v2, v3

    .line 336
    :goto_3
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v3

    iget v4, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    invoke-virtual {v3, v4}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 337
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v4

    if-nez v4, :cond_9

    const/16 v4, 0x32

    .line 338
    iput v4, p1, Lorg/codeaurora/ims/CallModify;->error:I

    :cond_9
    if-eqz v0, :cond_b

    .line 344
    iget v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttAutoUpgradeSupported(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 345
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p1, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->sendRttModifyResponse(Z)V

    .line 346
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    return-void

    .line 349
    :cond_a
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object p1, p1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyRttModifyRequest(Lorg/codeaurora/ims/CallDetails;)V

    .line 350
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    return-void

    .line 353
    :cond_b
    const-string v0, "RTT: onReceivedModifyCall: No RTT modification"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_d

    if-eqz v3, :cond_c

    goto :goto_4

    .line 364
    :cond_c
    const-string v0, "onReceivedModifyCall: No notify for CallModify "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 362
    :cond_d
    :goto_4
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyUnsolCallModify(Lorg/codeaurora/ims/CallModify;)V

    .line 367
    :goto_5
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallModification;->hasError(Lorg/codeaurora/ims/CallModify;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 368
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    :cond_e
    return-void
.end method

.method public rejectConnectionTypeChange(Landroid/os/Message;)V
    .locals 4

    .line 682
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    if-nez v0, :cond_0

    .line 683
    const-string v0, "rejectConnectionTypeChange callModifyRequest is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 684
    const-string v0, "no existing modify request"

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallModification;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 686
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/CallModify;->error()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    const-string v0, "rejectConnectionTypeChange callModifyRequest timed out."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingModify()V

    .line 689
    const-string v0, "modify request timed out"

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallModification;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    return-void

    .line 692
    :cond_1
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 693
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 695
    new-instance v1, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v1}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 696
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallIdInt()I

    move-result v2

    iput v2, v1, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 697
    new-instance v2, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v2, v0}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    iput-object v2, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Rejecting Change request: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " keep as "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 702
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    iget-object v0, v0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_3

    iget-object v0, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 707
    :cond_2
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {p0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    return-void

    .line 704
    :cond_3
    :goto_0
    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v0, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->answerDualVtRequest(Landroid/os/Message;ZI)V

    return-void
.end method

.method public setIsLocallyPaused(Z)V
    .locals 0

    .line 453
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    return-void
.end method

.method public setMultiTaskRetryCount(I)V
    .locals 0

    .line 438
    iput p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    return-void
.end method

.method public setPendingModify(Lorg/codeaurora/ims/CallModify;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mCallModifyRequest:Lorg/codeaurora/ims/CallModify;

    return-void
.end method

.method public update(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 3

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "update dc="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 466
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isActive(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 467
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpRetryAllowed:Z

    .line 471
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 472
    const-string v0, "videocall: update: Not a videocall CASE"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 473
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallModification;->clearPendingVTMultiTask()V

    .line 474
    iput v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mMultiTaskRetryCount:I

    .line 475
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 477
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isAvpRetryDialing(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v2

    iput v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mAvpCallType:I

    .line 483
    :cond_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v2, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isAvpRetryUpgrade(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v2

    if-nez v0, :cond_5

    if-eqz v2, :cond_3

    goto :goto_0

    .line 487
    :cond_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoPaused(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 489
    const-string v0, "videocall Video Paused CASE"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 490
    :cond_4
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoResumed(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 492
    const-string v0, "videocall Video Resumed CASE"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 485
    :cond_5
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "videocall AVP RETRY CASE dc= "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " conn= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallModification;->retryAvpUpgrade(Z)V

    .line 495
    :cond_7
    :goto_2
    iget-object p1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget p1, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallModification;->updatePreviousVTCallType(I)V

    .line 510
    iget-object p1, p0, Lorg/codeaurora/ims/ImsCallModification;->mImsCallSessionImpl:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->canVideoPause(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 511
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsLocallyPaused:Z

    .line 512
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsCallModification;->mIsVideoPauseRequested:Z

    :cond_8
    return-void
.end method
