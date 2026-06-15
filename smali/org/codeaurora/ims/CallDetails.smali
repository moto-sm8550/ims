.class public Lorg/codeaurora/ims/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"


# static fields
.field public static final CALL_DOMAIN_AUTOMATIC:I = 0x3

.field public static final CALL_DOMAIN_CS:I = 0x1

.field public static final CALL_DOMAIN_NOT_SET:I = 0x4

.field public static final CALL_DOMAIN_PS:I = 0x2

.field public static final CALL_DOMAIN_UNKNOWN:I = 0xb

.field public static final CALL_RESTRICT_CAUSE_DISABLED:I = 0x2

.field public static final CALL_RESTRICT_CAUSE_NONE:I = 0x0

.field public static final CALL_RESTRICT_CAUSE_RAT:I = 0x1

.field public static final CALL_SUBSTATE_AUDIO_CONNECTED_SUSPENDED:I = 0x1

.field public static final CALL_SUBSTATE_AVP_RETRY:I = 0x4

.field public static final CALL_SUBSTATE_MEDIA_PAUSED:I = 0x8

.field public static final CALL_SUBSTATE_NONE:I = 0x0

.field public static final CALL_SUBSTATE_VIDEO_CONNECTED_SUSPENDED:I = 0x2

.field public static final CALL_TYPE_CALLCOMPOSER:I = 0x1a

.field public static final CALL_TYPE_CS_VS_RX:I = 0x16

.field public static final CALL_TYPE_CS_VS_TX:I = 0x15

.field public static final CALL_TYPE_DC:I = 0x1c

.field public static final CALL_TYPE_DUAL_VT:I = 0x1d

.field public static final CALL_TYPE_PS_VS_RX:I = 0x18

.field public static final CALL_TYPE_PS_VS_TX:I = 0x17

.field public static final CALL_TYPE_SMS:I = 0x5

.field public static final CALL_TYPE_UNKNOWN:I = 0xa

.field public static final CALL_TYPE_USSD:I = 0x1b

.field public static final CALL_TYPE_UT:I = 0x19

.field public static final CALL_TYPE_VOICE:I = 0x0

.field public static final CALL_TYPE_VT:I = 0x3

.field public static final CALL_TYPE_VT_NODIR:I = 0x4

.field public static final CALL_TYPE_VT_PAUSE:I = 0x6

.field public static final CALL_TYPE_VT_RESUME:I = 0x7

.field public static final CALL_TYPE_VT_RX:I = 0x2

.field public static final CALL_TYPE_VT_TX:I = 0x1

.field public static final CAUSE_CODE_UNSPECIFIED:I = 0x0

.field public static final EXTRAS_CODEC:Ljava/lang/String; = "Codec"

.field public static final EXTRAS_HANDOVER_INFORMATION:Ljava/lang/String; = "handoverInfo"

.field public static final EXTRAS_IS_CONFERENCE_URI:Ljava/lang/String; = "isConferenceUri"

.field public static final EXTRAS_PARENT_CALL_ID:Ljava/lang/String; = "parentCallId"

.field public static final EXTRA_TYPE_LTE_TO_IWLAN_HO_FAIL:I = 0x1

.field public static final MEDIA_ID_UNKNOWN:I = -0x1

.field public static final RINGBACK_TONE_START:I = 0x1

.field public static final RINGBACK_TONE_STOP:I = 0x0

.field public static final TTY_MODE_FULL:I = 0x1

.field public static final TTY_MODE_HCO:I = 0x2

.field public static final TTY_MODE_OFF:I = 0x0

.field public static final TTY_MODE_VCO:I = 0x3

.field public static final VIDEO_PAUSE_STATE_PAUSED:I = 0x1

.field public static final VIDEO_PAUSE_STATE_RESUMED:I = 0x2


# instance fields
.field public callMediaId:I

.field public call_domain:I

.field public call_type:I

.field public callsubstate:I

.field public causeCode:I

.field public extras:[Ljava/lang/String;

.field public localAbility:[Lorg/codeaurora/ims/ServiceStatus;

.field private mIsCallPull:Z

.field private mIsCrbtCall:Z

.field private mIsVisualizedVoiceCall:Z

.field private mIsVosSupported:Z

.field private mLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

.field private mThreeDimensionalVideoType:I

.field private mVideoPauseState:I

.field public peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

.field public rttMode:I

.field public sipAlternateUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 205
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    const/4 v1, -0x1

    .line 206
    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    const/4 v1, 0x2

    .line 208
    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    .line 209
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCallPull:Z

    .line 213
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 214
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 217
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsVosSupported:Z

    .line 218
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsVisualizedVoiceCall:Z

    .line 219
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCrbtCall:Z

    .line 220
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->mThreeDimensionalVideoType:I

    const/16 v0, 0xa

    .line 223
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v0, 0x4

    .line 224
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;Lorg/codeaurora/ims/MultiIdentityLineInfo;)V

    return-void
.end method

.method public constructor <init>(II[Ljava/lang/String;Lorg/codeaurora/ims/MultiIdentityLineInfo;)V
    .locals 2

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 205
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    const/4 v1, -0x1

    .line 206
    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    const/4 v1, 0x2

    .line 208
    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    .line 209
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCallPull:Z

    .line 213
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 214
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 217
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsVosSupported:Z

    .line 218
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsVisualizedVoiceCall:Z

    .line 219
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCrbtCall:Z

    .line 220
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->mThreeDimensionalVideoType:I

    .line 234
    iput p1, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 235
    iput p2, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 236
    iput-object p3, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 237
    iput-object p4, p0, Lorg/codeaurora/ims/CallDetails;->mLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/CallDetails;)V
    .locals 2

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 205
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    const/4 v1, -0x1

    .line 206
    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    const/4 v1, 0x2

    .line 208
    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    .line 209
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCallPull:Z

    .line 213
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 214
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 217
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsVosSupported:Z

    .line 218
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsVisualizedVoiceCall:Z

    .line 219
    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCrbtCall:Z

    .line 220
    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->mThreeDimensionalVideoType:I

    if-eqz p1, :cond_0

    .line 242
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 243
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 244
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    .line 245
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    .line 246
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 247
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 248
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 249
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    .line 250
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    .line 251
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->mLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->mLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 252
    iget-boolean v0, p1, Lorg/codeaurora/ims/CallDetails;->mIsVosSupported:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsVosSupported:Z

    .line 253
    iget-boolean v0, p1, Lorg/codeaurora/ims/CallDetails;->mIsVisualizedVoiceCall:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsVisualizedVoiceCall:Z

    .line 254
    iget-boolean v0, p1, Lorg/codeaurora/ims/CallDetails;->mIsCrbtCall:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCrbtCall:Z

    .line 255
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->mThreeDimensionalVideoType:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->mThreeDimensionalVideoType:I

    .line 256
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    iput v0, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    .line 257
    iget-boolean v0, p1, Lorg/codeaurora/ims/CallDetails;->mIsCallPull:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCallPull:Z

    .line 258
    iget-object p1, p1, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object p1, p0, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 396
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 400
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;)V
    .locals 3

    .line 338
    iget-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 339
    array-length v2, v0

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 340
    array-length p0, v0

    sub-int/2addr p0, v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p0

    return-void

    .line 342
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 343
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    aput-object p0, v0, p1

    return-void
.end method

.method public getCallPull()Z
    .locals 0

    .line 352
    iget-boolean p0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCallPull:Z

    return p0
.end method

.method public getMultiIdentityLineInfo()Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .locals 0

    .line 467
    iget-object p0, p0, Lorg/codeaurora/ims/CallDetails;->mLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    return-object p0
.end method

.method public getRttMode()I
    .locals 0

    .line 463
    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    return p0
.end method

.method public getThreeDimensionalVideoType()I
    .locals 0

    .line 384
    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->mThreeDimensionalVideoType:I

    return p0
.end method

.method public getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-eqz p1, :cond_1

    .line 425
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 426
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 427
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 428
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    aget-object v2, v1, p0

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    .line 429
    aget-object p0, v1, p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getVideoPauseState()I
    .locals 0

    .line 421
    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    return p0
.end method

.method public getVosSupport()Z
    .locals 0

    .line 360
    iget-boolean p0, p0, Lorg/codeaurora/ims/CallDetails;->mIsVosSupported:Z

    return p0
.end method

.method public hasMediaIdValid()Z
    .locals 1

    .line 455
    iget p0, p0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCrbtCall()Z
    .locals 0

    .line 376
    iget-boolean p0, p0, Lorg/codeaurora/ims/CallDetails;->mIsCrbtCall:Z

    return p0
.end method

.method public isRadioTech5G()Z
    .locals 7

    .line 471
    iget-object v0, p0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 474
    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    .line 476
    iget v5, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    iget v6, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v5, v6, :cond_1

    .line 477
    invoke-virtual {v4}, Lorg/codeaurora/ims/ServiceStatus;->isRadioTech5G()Z

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isVisualizedVoiceCall()Z
    .locals 0

    .line 368
    iget-boolean p0, p0, Lorg/codeaurora/ims/CallDetails;->mIsVisualizedVoiceCall:Z

    return p0
.end method

.method public setCallPull(Z)V
    .locals 0

    .line 348
    iput-boolean p1, p0, Lorg/codeaurora/ims/CallDetails;->mIsCallPull:Z

    return-void
.end method

.method public setCrbtCall(Z)V
    .locals 0

    .line 372
    iput-boolean p1, p0, Lorg/codeaurora/ims/CallDetails;->mIsCrbtCall:Z

    return-void
.end method

.method public setExtras([Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    return-void
.end method

.method public setExtrasFromMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 408
    invoke-static {p1}, Lorg/codeaurora/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    return-void
.end method

.method public setRttMode(I)V
    .locals 0

    .line 459
    iput p1, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    return-void
.end method

.method public setThreeDimensionalVideoType(I)V
    .locals 0

    .line 380
    iput p1, p0, Lorg/codeaurora/ims/CallDetails;->mThreeDimensionalVideoType:I

    return-void
.end method

.method public setValueForKeyInExtras([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-eqz p1, :cond_1

    .line 438
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 439
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 440
    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 441
    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    aget-object v1, v1, p0

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public setVideoPauseState(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 416
    :cond_0
    iput p1, p0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    return-void
.end method

.method public setVisualizedVoiceCall(Z)V
    .locals 0

    .line 364
    iput-boolean p1, p0, Lorg/codeaurora/ims/CallDetails;->mIsVisualizedVoiceCall:Z

    return-void
.end method

.method public setVosSupport(Z)V
    .locals 0

    .line 356
    iput-boolean p1, p0, Lorg/codeaurora/ims/CallDetails;->mIsVosSupported:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 489
    iget-object v1, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v3, ""

    if-eqz v1, :cond_0

    .line 490
    array-length v4, v1

    move-object v6, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v7, v1, v5

    .line 491
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 495
    :cond_0
    iget-object v1, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const-string v4, " accTechStatus "

    const-string v5, " rttMode = "

    const-string v6, " status = "

    const-string v7, " type = "

    const-string v8, "isValid = "

    if-eqz v1, :cond_2

    .line 496
    array-length v9, v1

    move-object v11, v3

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_3

    aget-object v12, v1, v10

    if-eqz v12, :cond_1

    .line 498
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v12, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v12, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v12, Lorg/codeaurora/ims/ServiceStatus;->status:I

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v12, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 500
    iget-object v13, v12, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v13, :cond_1

    .line 501
    iget-object v12, v12, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v13, v12

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v13, :cond_1

    aget-object v15, v12, v14

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    move-object v11, v3

    .line 509
    :cond_3
    iget-object v1, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v1, :cond_5

    .line 510
    array-length v2, v1

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v2, :cond_5

    aget-object v10, v1, v9

    if-eqz v10, :cond_4

    .line 512
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v10, Lorg/codeaurora/ims/ServiceStatus;->isValid:Z

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lorg/codeaurora/ims/ServiceStatus;->type:I

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lorg/codeaurora/ims/ServiceStatus;->status:I

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 514
    iget-object v12, v10, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v12, :cond_4

    .line 515
    iget-object v10, v10, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v12, v10

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_4

    aget-object v14, v10, v13

    .line 516
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 523
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callSubState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " videoPauseState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lorg/codeaurora/ims/CallDetails;->mVideoPauseState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mediaId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Rtt mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Local Ability "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Peer Ability "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Cause code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sipAlternateUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/codeaurora/ims/CallDetails;->mLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isVosSupported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lorg/codeaurora/ims/CallDetails;->mIsVosSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isVisualizedVoiceCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lorg/codeaurora/ims/CallDetails;->mIsVisualizedVoiceCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isCrbtCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lorg/codeaurora/ims/CallDetails;->mIsCrbtCall:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " threeDimensionalVideoType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->mThreeDimensionalVideoType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 267
    :cond_0
    iget v1, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget v2, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    .line 268
    iput v2, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 269
    iget v1, p1, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    iput v1, p0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v0

    .line 272
    :goto_0
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    iget v4, p1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    if-eq v2, v4, :cond_2

    .line 273
    iput v4, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    move v1, v3

    .line 276
    :cond_2
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    iget v4, p1, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    if-eq v2, v4, :cond_3

    .line 277
    iput v4, p0, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    move v1, v3

    .line 280
    :cond_3
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    iget v4, p1, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    if-eq v2, v4, :cond_4

    .line 281
    iput v4, p0, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    move v1, v3

    .line 285
    :cond_4
    iget-object v2, p0, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iget-object v4, p1, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    if-eq v2, v4, :cond_5

    .line 286
    iput-object v4, p0, Lorg/codeaurora/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    move v1, v3

    .line 290
    :cond_5
    iget-boolean v2, p0, Lorg/codeaurora/ims/CallDetails;->mIsVosSupported:Z

    iget-boolean v4, p1, Lorg/codeaurora/ims/CallDetails;->mIsVosSupported:Z

    if-eq v2, v4, :cond_6

    .line 291
    iput-boolean v4, p0, Lorg/codeaurora/ims/CallDetails;->mIsVosSupported:Z

    move v1, v3

    .line 295
    :cond_6
    iget-boolean v2, p0, Lorg/codeaurora/ims/CallDetails;->mIsVisualizedVoiceCall:Z

    iget-boolean v4, p1, Lorg/codeaurora/ims/CallDetails;->mIsVisualizedVoiceCall:Z

    if-eq v2, v4, :cond_7

    .line 296
    iput-boolean v4, p0, Lorg/codeaurora/ims/CallDetails;->mIsVisualizedVoiceCall:Z

    move v1, v3

    .line 300
    :cond_7
    iget-boolean v2, p0, Lorg/codeaurora/ims/CallDetails;->mIsCrbtCall:Z

    iget-boolean v4, p1, Lorg/codeaurora/ims/CallDetails;->mIsCrbtCall:Z

    if-eq v2, v4, :cond_8

    .line 301
    iput-boolean v4, p0, Lorg/codeaurora/ims/CallDetails;->mIsCrbtCall:Z

    move v1, v3

    .line 305
    :cond_8
    iget v2, p0, Lorg/codeaurora/ims/CallDetails;->mThreeDimensionalVideoType:I

    iget v4, p1, Lorg/codeaurora/ims/CallDetails;->mThreeDimensionalVideoType:I

    if-eq v2, v4, :cond_9

    .line 306
    iput v4, p0, Lorg/codeaurora/ims/CallDetails;->mThreeDimensionalVideoType:I

    move v1, v3

    .line 310
    :cond_9
    iget-object v2, p1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iput-object v2, p0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 311
    iget-object v2, p1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    iput-object v2, p0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    move v2, v0

    .line 313
    :goto_1
    iget-object v4, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v4, :cond_c

    array-length v5, v4

    if-ge v2, v5, :cond_c

    .line 314
    aget-object v4, v4, v2

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 315
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 316
    iget-object v5, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v6, v4, v0

    invoke-virtual {p0, v5, v6}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 318
    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 319
    iget-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v5, v4, v0

    aget-object v4, v4, v3

    invoke-virtual {p0, v1, v5, v4}, Lorg/codeaurora/ims/CallDetails;->setValueForKeyInExtras([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    goto :goto_2

    .line 325
    :cond_a
    iget-object v1, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/CallDetails;->addExtra(Ljava/lang/String;)V

    :goto_2
    move v1, v3

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 329
    :cond_c
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getVideoPauseState()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/CallDetails;->setVideoPauseState(I)V

    return v1
.end method
