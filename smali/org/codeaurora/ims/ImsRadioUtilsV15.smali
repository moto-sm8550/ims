.class public Lorg/codeaurora/ims/ImsRadioUtilsV15;
.super Ljava/lang/Object;
.source "ImsRadioUtilsV15.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    .locals 1

    .line 260
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;-><init>()V

    .line 262
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->configInfoItemToHal(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->item:I

    const/4 p0, 0x1

    .line 263
    iput-boolean p0, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->hasBoolValue:Z

    .line 264
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->boolValue:Z

    .line 265
    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->intValue:I

    if-eqz p3, :cond_0

    .line 267
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 269
    :cond_0
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseToHal(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->errorCause:I

    return-object v0
.end method

.method public static callForwardStatusInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;)Lorg/codeaurora/ims/CallForwardStatusInfo;
    .locals 2

    .line 372
    new-instance v0, Lorg/codeaurora/ims/CallForwardStatusInfo;

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;->status:Ljava/util/ArrayList;

    .line 374
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->toCallForwardStatus(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/CallForwardStatus;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/codeaurora/ims/CallForwardStatusInfo;-><init>(Landroid/telephony/ims/ImsReasonInfo;[Lorg/codeaurora/ims/CallForwardStatus;)V

    return-object v0
.end method

.method public static configInfoItemFromHal(I)I
    .locals 1

    const/16 v0, 0x4b

    if-eq p0, v0, :cond_0

    .line 254
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->configInfoItemFromHal(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x49

    return p0
.end method

.method public static configInfoItemToHal(I)I
    .locals 1

    const/16 v0, 0x49

    if-eq p0, v0, :cond_0

    .line 245
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->configInfoItemToHal(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0x4b

    return p0
.end method

.method public static getCallFailCauseForImsReason(I)I
    .locals 1

    const/16 v0, 0x1ff

    if-eq p0, v0, :cond_4

    const/16 v0, 0x200

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3f9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5ed

    if-eq p0, v0, :cond_1

    const/16 v0, 0xbb9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 78
    const-class p0, Lorg/codeaurora/ims/ImsRadioUtilsV15;

    const-string v0, "Unsupported imsReason for ending call. Passing end cause as \'misc\'."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p0, 0x224

    return p0

    :pswitch_0
    const/16 p0, 0x26a

    return p0

    :pswitch_1
    const/16 p0, 0x269

    return p0

    :pswitch_2
    const/16 p0, 0x268

    return p0

    :pswitch_3
    const/16 p0, 0x267

    return p0

    :pswitch_4
    const/16 p0, 0x266

    return p0

    :pswitch_5
    const/16 p0, 0x265

    return p0

    :pswitch_6
    const/16 p0, 0x264

    return p0

    :pswitch_7
    const/16 p0, 0x263

    return p0

    :pswitch_8
    const/16 p0, 0x262

    return p0

    :pswitch_9
    const/16 p0, 0x261

    return p0

    :pswitch_a
    const/16 p0, 0x260

    return p0

    :pswitch_b
    const/16 p0, 0x25f

    return p0

    :cond_0
    const/16 p0, 0x26b

    return p0

    :cond_1
    const/16 p0, 0x25e

    return p0

    :cond_2
    const/16 p0, 0x25b

    return p0

    :cond_3
    const/16 p0, 0x25d

    return p0

    :cond_4
    const/16 p0, 0x25c

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x16e
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x178
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getImsReasonForCallFailCause(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0xbb9

    return p0

    :pswitch_1
    const/16 p0, 0x17a

    return p0

    :pswitch_2
    const/16 p0, 0x179

    return p0

    :pswitch_3
    const/16 p0, 0x178

    return p0

    :pswitch_4
    const/16 p0, 0x176

    return p0

    :pswitch_5
    const/16 p0, 0x175

    return p0

    :pswitch_6
    const/16 p0, 0x174

    return p0

    :pswitch_7
    const/16 p0, 0x173

    return p0

    :pswitch_8
    const/16 p0, 0x172

    return p0

    :pswitch_9
    const/16 p0, 0x171

    return p0

    :pswitch_a
    const/16 p0, 0x170

    return p0

    :pswitch_b
    const/16 p0, 0x16f

    return p0

    :pswitch_c
    const/16 p0, 0x16e

    return p0

    :pswitch_d
    const/16 p0, 0x5ed

    return p0

    :pswitch_e
    const/16 p0, 0x200

    return p0

    :pswitch_f
    const/16 p0, 0x1ff

    return p0

    :pswitch_10
    const/16 p0, 0x3f9

    return p0

    :pswitch_data_0
    .packed-switch 0x25b
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static imsSmsDeliverStatusToHidl(I)I
    .locals 2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 443
    const-class p0, Lorg/codeaurora/ims/ImsRadioUtilsV15;

    const-string v0, "unknown deliver status"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method public static isConfigItemIntroducedInV15(I)Ljava/lang/Boolean;
    .locals 1

    const/16 v0, 0x4b

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    .line 280
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    .line 278
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static mapEmergencyCallRoutingToHal(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static mapEmergencyServiceCategoryToHal(I)I
    .locals 3

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v0, p0, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    and-int/lit8 v0, p0, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    and-int/lit8 v0, p0, 0x8

    const/16 v2, 0x8

    if-ne v0, v2, :cond_3

    or-int/lit8 v1, v1, 0x8

    :cond_3
    and-int/lit8 v0, p0, 0x10

    const/16 v2, 0x10

    if-ne v0, v2, :cond_4

    or-int/lit8 v1, v1, 0x10

    :cond_4
    and-int/lit8 v0, p0, 0x20

    const/16 v2, 0x20

    if-ne v0, v2, :cond_5

    or-int/lit8 v1, v1, 0x20

    :cond_5
    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_6

    or-int/lit8 p0, v1, 0x40

    return p0

    :cond_6
    return v1
.end method

.method public static mapHidlToFrameworkResponseReason(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    .line 431
    const-class p0, Lorg/codeaurora/ims/ImsRadioUtilsV15;

    const-string v0, "Failure reason is unknown"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/16 p0, 0x18

    return p0

    :pswitch_1
    const/16 p0, 0x17

    return p0

    :pswitch_2
    const/16 p0, 0x16

    return p0

    :pswitch_3
    const/16 p0, 0x15

    return p0

    :pswitch_4
    const/16 p0, 0x14

    return p0

    :pswitch_5
    const/16 p0, 0x13

    return p0

    :pswitch_6
    const/16 p0, 0x12

    return p0

    :pswitch_7
    const/16 p0, 0x11

    return p0

    :pswitch_8
    const/16 p0, 0x10

    return p0

    :pswitch_9
    const/16 p0, 0xf

    return p0

    :pswitch_a
    const/16 p0, 0xe

    return p0

    :pswitch_b
    const/16 p0, 0xd

    return p0

    :pswitch_c
    const/16 p0, 0xc

    return p0

    :pswitch_d
    const/16 p0, 0xb

    return p0

    :pswitch_e
    const/16 p0, 0xa

    return p0

    :pswitch_f
    const/16 p0, 0x9

    return p0

    :pswitch_10
    const/4 p0, 0x6

    return p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mapTirPresentationToIpPresentation(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static migarateVerstatInfo(Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;)V
    .locals 1

    .line 205
    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->canMarkUnwantedCall:Z

    iput-boolean v0, p1, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->canMarkUnwantedCall:Z

    .line 206
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->verificationStatus:I

    iput p0, p1, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->verificationStatus:I

    return-void
.end method

.method public static migrateAutoCallRejectionInfoFrom(Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;)Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;
    .locals 2

    .line 218
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;-><init>()V

    .line 219
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->callType:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->callType:I

    .line 220
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->autoRejectionCause:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->autoRejectionCause:I

    .line 221
    iget-short v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->sipErrorCode:S

    iput-short v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->sipErrorCode:S

    .line 222
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->number:Ljava/lang/String;

    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->number:Ljava/lang/String;

    return-object v0
.end method

.method private static migrateCallInfoFrom(Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;
    .locals 4

    .line 135
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;-><init>()V

    .line 136
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->state:I

    .line 137
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->index:I

    .line 138
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->toa:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->toa:I

    .line 139
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsMpty:Z

    .line 140
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isMpty:Z

    .line 141
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsMT:Z

    .line 142
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isMT:Z

    .line 143
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->als:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->als:I

    .line 144
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsVoice:Z

    .line 145
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isVoice:Z

    .line 146
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsVoicePrivacy:Z

    .line 147
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isVoicePrivacy:Z

    .line 148
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->number:Ljava/lang/String;

    .line 149
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->numberPresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->numberPresentation:I

    .line 150
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->name:Ljava/lang/String;

    .line 151
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->namePresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->namePresentation:I

    .line 153
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasCallDetails:Z

    .line 154
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 155
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 156
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 158
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

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

    .line 159
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

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

    .line 163
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 166
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

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

    .line 167
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 170
    :cond_2
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    .line 171
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    .line 172
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    .line 173
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 174
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 176
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasFailCause:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasFailCause:Z

    .line 177
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->failCause:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->failCause:I

    .line 179
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

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

    .line 180
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 183
    :cond_3
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 184
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->hasErrorDetails:Z

    .line 185
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 186
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 189
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsEncrypted:Z

    .line 190
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isEncrypted:Z

    .line 191
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsCalledPartyRinging:Z

    .line 192
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isCalledPartyRinging:Z

    .line 193
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->historyInfo:Ljava/lang/String;

    .line 194
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsVideoConfSupported:Z

    .line 195
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isVideoConfSupported:Z

    .line 197
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->migarateVerstatInfo(Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;)V

    .line 198
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {p0, v1}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->migrateMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V

    return-object v0
.end method

.method public static migrateCallListFrom(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 232
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;

    .line 234
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->migrateCallInfoFrom(Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static migrateConfigInfoFromV16(Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 290
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;-><init>()V

    .line 292
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->item:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->isConfigItemIntroducedInV16(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->item:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->item:I

    .line 296
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->hasBoolValue:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->hasBoolValue:Z

    .line 297
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->boolValue:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->boolValue:Z

    .line 298
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->intValue:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->intValue:I

    .line 299
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->stringValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->stringValue:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 302
    :cond_0
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->errorCause:I

    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseToHal(I)I

    move-result p0

    iput p0, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->errorCause:I

    return-object v0

    .line 293
    :cond_1
    new-instance p0, Landroid/telephony/ims/ImsException;

    const-string v0, "Config item not supported in current HAL"

    invoke-direct {p0, v0}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static migrateMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V
    .locals 1

    .line 211
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->msisdn:Ljava/lang/String;

    iput-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->msisdn:Ljava/lang/String;

    .line 212
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->registrationStatus:I

    iput v0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->registrationStatus:I

    .line 213
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->lineType:I

    iput p0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->lineType:I

    return-void
.end method

.method private static toCallForwardStatus(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/CallForwardStatus;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;",
            ">;)[",
            "Lorg/codeaurora/ims/CallForwardStatus;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 383
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 384
    new-array v1, v0, [Lorg/codeaurora/ims/CallForwardStatus;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 387
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;

    .line 388
    new-instance v4, Lorg/codeaurora/ims/CallForwardStatus;

    iget v5, v3, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;->reason:I

    iget v6, v3, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;->status:I

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 389
    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3}, Lorg/codeaurora/ims/CallForwardStatus;-><init>(IILandroid/telephony/ims/ImsReasonInfo;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
