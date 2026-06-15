.class public Lorg/codeaurora/ims/ImsRegistrationController;
.super Ljava/lang/Object;
.source "ImsRegistrationController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsRegistrationController$Listener;
    }
.end annotation


# static fields
.field private static final IKEv2_AUTH_FAILURE:I = 0x5


# instance fields
.field private final EVENT_GEO_LOCATION_DATA_STATUS:I

.field private final EVENT_IMS_STATE_CHANGED:I

.field private final EVENT_IMS_STATE_DONE:I

.field private final EVENT_QUERY_IMS_REG_STATE:I

.field private final EVENT_REGISTRATION_BLOCK_STATUS:I

.field private final EVENT_SRV_DOMAIN_CHANGED:I

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private mErrorCode:I

.field private mHandler:Landroid/os/Handler;

.field private mIsQueryingRegState:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsRegistrationController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistrationStatus:I

.field private mSelfIndentityUris:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mSrvDomain:I


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;)V
    .locals 1

    .line 93
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsRegistrationController;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 7

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 58
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    .line 59
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    const/4 v1, 0x0

    .line 61
    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    const/4 v2, 0x2

    .line 62
    iput v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    .line 63
    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    .line 64
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    const/4 v3, 0x1

    .line 70
    iput v3, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_REGISTRATION_BLOCK_STATUS:I

    .line 71
    iput v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_GEO_LOCATION_DATA_STATUS:I

    const/4 v4, 0x3

    .line 72
    iput v4, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_IMS_STATE_CHANGED:I

    const/4 v5, 0x4

    .line 73
    iput v5, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_IMS_STATE_DONE:I

    const/4 v5, 0x5

    .line 74
    iput v5, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_SRV_DOMAIN_CHANGED:I

    const/4 v6, 0x6

    .line 75
    iput v6, p0, Lorg/codeaurora/ims/ImsRegistrationController;->EVENT_QUERY_IMS_REG_STATE:I

    .line 79
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsQueryingRegState:Z

    .line 98
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 99
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    .line 100
    iput-object p2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mContext:Landroid/content/Context;

    .line 101
    iget-object p2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {p2, p1, v3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRegistrationBlockStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 102
    iget-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForGeoLocationDataStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    iget-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 104
    iget-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0, v5, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSrvDomainChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private handleGeoLocationDataStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3

    .line 323
    const-string v0, "handleGeoLocationDataStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 324
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 329
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 330
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const-string v1, ""

    const/16 v2, 0x3e8

    invoke-direct {v0, v2, p1, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    const/4 p1, 0x2

    .line 332
    iput p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    .line 333
    iput v2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 334
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    return-void

    .line 325
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error EVENT_GEO_LOCATION_DATA_STATUS AsyncResult ar = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private handleImsStateChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 6

    .line 339
    const-string v0, "handleImsStateChanged"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 340
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Lorg/codeaurora/ims/ImsRegistrationInfo;

    if-nez v0, :cond_0

    goto :goto_1

    .line 350
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/ImsRegistrationInfo;

    .line 351
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getRadioTech()I

    move-result v0

    .line 353
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getErrorCode()I

    move-result v1

    .line 354
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    .line 355
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getPAssociatedUris()Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsRegistrationInfo;->getState()I

    move-result p1

    if-eqz v3, :cond_1

    .line 359
    invoke-static {v3}, Lorg/codeaurora/ims/ImsRegistrationUtils;->extractUrisFromPipeSeparatedUriStrings(Ljava/lang/String;)[Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 363
    :goto_0
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v5, 0x3e8

    invoke-direct {v4, v5, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 367
    iput p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 369
    iput v5, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    :cond_2
    const/4 v1, 0x1

    .line 371
    invoke-direct {p0, p1, v4, v0, v1}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    .line 373
    iget-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    invoke-static {p1, v3}, Lorg/codeaurora/ims/ImsRegistrationUtils;->areSelfIdentityUrisDiff(Ljava/util/HashSet;[Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 375
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsRegistrationController;->updateSelfIdentityUriCache([Landroid/net/Uri;)V

    .line 376
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    :cond_3
    return-void

    .line 341
    :cond_4
    :goto_1
    const-string p1, "handleImsStateChanged error"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private handleQueryImsRegistrationState()V
    .locals 2

    const/4 v0, 0x1

    .line 181
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsQueryingRegState:Z

    .line 182
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsRegistrationState(Landroid/os/Message;)V

    return-void
.end method

.method private handleRegistrationBlockStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 281
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 285
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    .line 288
    invoke-virtual {p1}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->getStatusOnWlan()Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p1}, Lorg/codeaurora/ims/RegistrationBlockStatusInfo;->getStatusOnWlan()Lorg/codeaurora/ims/BlockStatusInfo;

    move-result-object p1

    .line 292
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRegistrationController;->isIKEv2Error(Lorg/codeaurora/ims/BlockStatusInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 293
    const-string p1, "Permanent IWLAN reg failure (IKEv2 auth failure)."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x580

    const/4 v1, 0x0

    const/16 v2, 0x578

    invoke-direct {p1, v2, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    const/16 v0, 0x13

    .line 298
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    :cond_1
    return-void

    .line 282
    :cond_2
    :goto_0
    const-string p1, "Async result is null or exception is not null."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private handleSrvDomainChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2

    .line 425
    const-string v0, "handleSrvDomainChanged"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 426
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 431
    :cond_0
    iget-object p1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 432
    iget v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    if-eq v0, p1, :cond_1

    .line 433
    iput p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    const/4 p1, 0x0

    .line 434
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationController;->maybeNotifySrvDomainChange(Z)V

    :cond_1
    return-void

    .line 427
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error EVENT_SRV_DOMAIN_CHANGED AsyncResult ar = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private static isIKEv2Error(Lorg/codeaurora/ims/BlockStatusInfo;)Z
    .locals 3

    .line 306
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockStatusInfo;->getReasonDetails()Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockStatusInfo;->getReasonDetails()Lorg/codeaurora/ims/BlockReasonDetailsInfo;

    move-result-object p0

    .line 310
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReasonType()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 312
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReason()I

    move-result v0

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_0

    .line 315
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReasonType()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    .line 317
    invoke-virtual {p0}, Lorg/codeaurora/ims/BlockReasonDetailsInfo;->getRegFailureReason()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private maybeNotifySrvDomainChange(Z)V
    .locals 5

    .line 387
    iget v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 388
    const-string p1, "checkSrvDomainChange IMS not deregistered."

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 391
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRegistrationUtils;->convertToPsAttachedCode(I)I

    move-result v0

    .line 392
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    iget v3, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v0, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    const v0, 0x7fffffff

    const/4 v3, 0x0

    .line 393
    invoke-direct {p0, v1, v2, v0, v3}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    if-nez p1, :cond_1

    .line 396
    iget-object p1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0, v1, p1, v0, v3}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    :cond_1
    return-void
.end method

.method private notifyOnDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 1

    .line 157
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 158
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnRegistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 1

    .line 141
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 142
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onRegistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnRegistering(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 1

    .line 149
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 150
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onRegistering(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 1

    .line 170
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 171
    invoke-interface {v0, p1}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyOnTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    .line 164
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsRegistrationController$Listener;

    .line 165
    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/ImsRegistrationController$Listener;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    return-void

    .line 214
    :cond_0
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 215
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnRegistering(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    return-void

    .line 208
    :cond_1
    iput-object p2, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 209
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRegistrationController;->maybeNotifySrvDomainChange(Z)V

    .line 210
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    return-void

    .line 203
    :cond_2
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyOnRegistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    return-void
.end method

.method private updateSelfIdentityUriCache([Landroid/net/Uri;)V
    .locals 3

    .line 402
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 403
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :goto_0
    if-nez p1, :cond_1

    .line 408
    const-string p1, "new_uris is null"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 411
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 412
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateSelfIdentityUriCache :: new self-identity host URI="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p1, v0

    .line 414
    invoke-static {v2}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 413
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addListener(Lorg/codeaurora/ims/ImsRegistrationController$Listener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 116
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Duplicate listener, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispose()V
    .locals 2

    .line 439
    const-string v0, "dispose"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForRegistrationBlockStatus(Landroid/os/Handler;)V

    .line 441
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForGeoLocationDataStatus(Landroid/os/Handler;)V

    .line 442
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V

    .line 443
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSrvDomainChanged(Landroid/os/Handler;)V

    const/4 v0, 0x0

    .line 444
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 445
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    .line 446
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    const/4 v1, 0x0

    .line 447
    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSrvDomain:I

    const/4 v1, 0x2

    .line 448
    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    .line 449
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mDeregisteredInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method

.method public getSelfIdentityUri()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/util/HashSet;

    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Message received: what = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 226
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown message = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    :pswitch_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRegistrationController;->handleQueryImsRegistrationState()V

    goto :goto_0

    .line 264
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 265
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationController;->handleSrvDomainChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    goto :goto_0

    .line 250
    :pswitch_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->isAidlReorderingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const-string p1, "EVENT_IMS_STATE_DONE. Ignoring as relying on indication is supported"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 256
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsQueryingRegState:Z

    if-eqz v0, :cond_1

    .line 257
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsQueryingRegState:Z

    .line 258
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationController;->handleImsStateChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    goto :goto_0

    .line 260
    :cond_1
    const-string p1, "EVENT_IMS_STATE_DONE. Ignoring due to new unsol event received"

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 237
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 239
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRegistrationController;->handleQueryImsRegistrationState()V

    goto :goto_0

    .line 245
    :cond_2
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mIsQueryingRegState:Z

    .line 246
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationController;->handleImsStateChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    goto :goto_0

    .line 232
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 233
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationController;->handleGeoLocationDataStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    goto :goto_0

    .line 228
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 229
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationController;->handleRegistrationBlockStatus(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeListener(Lorg/codeaurora/ims/ImsRegistrationController$Listener;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 132
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Listener not found, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "listener is null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestImsRegistrationState()V
    .locals 1

    .line 176
    const-string v0, "requestImsRegistrationState"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iget-object p0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public reset(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    .line 187
    const-string v0, "reset"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 188
    iput v0, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mRegistrationStatus:I

    const/4 v1, 0x0

    .line 189
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mSelfIndentityUris:Ljava/util/HashSet;

    .line 190
    invoke-virtual {p1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    iput v1, p0, Lorg/codeaurora/ims/ImsRegistrationController;->mErrorCode:I

    const v1, 0x7fffffff

    const/4 v2, 0x0

    .line 191
    invoke-direct {p0, v0, p1, v1, v2}, Lorg/codeaurora/ims/ImsRegistrationController;->notifyRegChange(ILandroid/telephony/ims/ImsReasonInfo;IZ)V

    return-void
.end method
