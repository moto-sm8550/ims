.class public Lorg/codeaurora/ims/ImsRadioUtilsV14;
.super Ljava/lang/Object;
.source "ImsRadioUtilsV14.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromMultiIdentityLineInfoHal(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .locals 3

    .line 27
    new-instance v0, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->msisdn:Ljava/lang/String;

    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->lineType:I

    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->registrationStatus:I

    invoke-direct {v0, v1, v2, p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static getCallFailCauseForImsReason(I)I
    .locals 0

    .line 22
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->getCallFailCauseForImsReason(I)I

    move-result p0

    return p0
.end method

.method private static migrateCallInfoFromV13(Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;
    .locals 4

    .line 62
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;-><init>()V

    .line 63
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->state:I

    .line 64
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->index:I

    .line 65
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->toa:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->toa:I

    .line 66
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMpty:Z

    .line 67
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMpty:Z

    .line 68
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMT:Z

    .line 69
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMT:Z

    .line 70
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->als:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->als:I

    .line 71
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoice:Z

    .line 72
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoice:Z

    .line 73
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoicePrivacy:Z

    .line 74
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoicePrivacy:Z

    .line 75
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->number:Ljava/lang/String;

    .line 76
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->numberPresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->numberPresentation:I

    .line 77
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->name:Ljava/lang/String;

    .line 78
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->namePresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->namePresentation:I

    .line 80
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasCallDetails:Z

    .line 81
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 82
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 83
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 85
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 86
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 89
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 90
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 93
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 94
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 97
    :cond_2
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    .line 98
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    .line 99
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    .line 100
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 101
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 103
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasFailCause:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasFailCause:Z

    .line 104
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->failCause:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->failCause:I

    .line 106
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 107
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 110
    :cond_3
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 111
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->hasErrorDetails:Z

    .line 112
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 113
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 116
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsEncrypted:Z

    .line 117
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isEncrypted:Z

    .line 118
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsCalledPartyRinging:Z

    .line 119
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isCalledPartyRinging:Z

    .line 120
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->historyInfo:Ljava/lang/String;

    .line 121
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVideoConfSupported:Z

    .line 122
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVideoConfSupported:Z

    iput-boolean p0, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVideoConfSupported:Z

    .line 123
    invoke-static {}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getDefaultLine()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object p0

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {p0, v1}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->toMultiIdentityLineInfoHal(Lorg/codeaurora/ims/MultiIdentityLineInfo;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V

    return-object v0
.end method

.method public static migrateCallListFromV13(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 135
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;

    .line 137
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->migrateCallInfoFromV13(Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;

    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static toMultiIdentityLineInfoHal(Lorg/codeaurora/ims/MultiIdentityLineInfo;)Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;
    .locals 1

    .line 34
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;-><init>()V

    .line 35
    invoke-static {p0, v0}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->toMultiIdentityLineInfoHal(Lorg/codeaurora/ims/MultiIdentityLineInfo;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V

    return-object v0
.end method

.method public static toMultiIdentityLineInfoHal(Lorg/codeaurora/ims/MultiIdentityLineInfo;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V
    .locals 1

    if-nez p0, :cond_0

    .line 49
    invoke-static {}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getDefaultLine()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object p0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->msisdn:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineType()I

    move-result v0

    iput v0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->lineType:I

    .line 53
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineStatus()I

    move-result p0

    iput p0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->registrationStatus:I

    return-void
.end method
