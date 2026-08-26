.class public final Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;
.super Ljava/lang/Object;
.source "CallInfo.java"


# instance fields
.field public als:I

.field public callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

.field public failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

.field public hasCallDetails:Z

.field public hasFailCause:Z

.field public hasIsCalledPartyRinging:Z

.field public hasIsEncrypted:Z

.field public hasIsMT:Z

.field public hasIsMpty:Z

.field public hasIsVideoConfSupported:Z

.field public hasIsVoice:Z

.field public hasIsVoicePrivacy:Z

.field public historyInfo:Ljava/lang/String;

.field public index:I

.field public isCalledPartyRinging:Z

.field public isEncrypted:Z

.field public isMT:Z

.field public isMpty:Z

.field public isVideoConfSupported:Z

.field public isVoice:Z

.field public isVoicePrivacy:Z

.field public mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public state:I

.field public toa:I

.field public verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->state:I

    .line 6
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->index:I

    .line 7
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->toa:I

    .line 8
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMpty:Z

    .line 9
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMpty:Z

    .line 10
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMT:Z

    .line 11
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMT:Z

    .line 12
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    .line 13
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->als:I

    .line 14
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoice:Z

    .line 15
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoice:Z

    .line 16
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoicePrivacy:Z

    .line 17
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoicePrivacy:Z

    .line 18
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->number:Ljava/lang/String;

    .line 19
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->numberPresentation:I

    .line 20
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->name:Ljava/lang/String;

    .line 21
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->namePresentation:I

    .line 22
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasCallDetails:Z

    .line 23
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    .line 24
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasFailCause:Z

    .line 25
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    .line 26
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsEncrypted:Z

    .line 27
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isEncrypted:Z

    .line 28
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsCalledPartyRinging:Z

    .line 29
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isCalledPartyRinging:Z

    .line 30
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->historyInfo:Ljava/lang/String;

    .line 31
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVideoConfSupported:Z

    .line 32
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVideoConfSupported:Z

    .line 33
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 244
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 247
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0x138

    int-to-long v5, v3

    .line 249
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 248
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 252
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 254
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;-><init>()V

    mul-int/lit16 v5, v1, 0x138

    int-to-long v5, v5

    .line 255
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 256
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 322
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 324
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 325
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 326
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 327
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x138

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 329
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;

    mul-int/lit16 v5, v4, 0x138

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 331
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 334
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 43
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 46
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;

    .line 47
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->state:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->state:I

    if-eq v2, v3, :cond_3

    return v1

    .line 50
    :cond_3
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->index:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->index:I

    if-eq v2, v3, :cond_4

    return v1

    .line 53
    :cond_4
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->toa:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->toa:I

    if-eq v2, v3, :cond_5

    return v1

    .line 56
    :cond_5
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMpty:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMpty:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 59
    :cond_6
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMpty:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMpty:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 62
    :cond_7
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMT:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMT:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 65
    :cond_8
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMT:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMT:Z

    if-eq v2, v3, :cond_9

    return v1

    .line 68
    :cond_9
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 71
    :cond_a
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->als:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->als:I

    if-eq v2, v3, :cond_b

    return v1

    .line 74
    :cond_b
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoice:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoice:Z

    if-eq v2, v3, :cond_c

    return v1

    .line 77
    :cond_c
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoice:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoice:Z

    if-eq v2, v3, :cond_d

    return v1

    .line 80
    :cond_d
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoicePrivacy:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoicePrivacy:Z

    if-eq v2, v3, :cond_e

    return v1

    .line 83
    :cond_e
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoicePrivacy:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoicePrivacy:Z

    if-eq v2, v3, :cond_f

    return v1

    .line 86
    :cond_f
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->number:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 89
    :cond_10
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->numberPresentation:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->numberPresentation:I

    if-eq v2, v3, :cond_11

    return v1

    .line 92
    :cond_11
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 95
    :cond_12
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->namePresentation:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->namePresentation:I

    if-eq v2, v3, :cond_13

    return v1

    .line 98
    :cond_13
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasCallDetails:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasCallDetails:Z

    if-eq v2, v3, :cond_14

    return v1

    .line 101
    :cond_14
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    .line 104
    :cond_15
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasFailCause:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasFailCause:Z

    if-eq v2, v3, :cond_16

    return v1

    .line 107
    :cond_16
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    return v1

    .line 110
    :cond_17
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsEncrypted:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsEncrypted:Z

    if-eq v2, v3, :cond_18

    return v1

    .line 113
    :cond_18
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isEncrypted:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isEncrypted:Z

    if-eq v2, v3, :cond_19

    return v1

    .line 116
    :cond_19
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsCalledPartyRinging:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsCalledPartyRinging:Z

    if-eq v2, v3, :cond_1a

    return v1

    .line 119
    :cond_1a
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isCalledPartyRinging:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isCalledPartyRinging:Z

    if-eq v2, v3, :cond_1b

    return v1

    .line 122
    :cond_1b
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->historyInfo:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->historyInfo:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1c

    return v1

    .line 125
    :cond_1c
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVideoConfSupported:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVideoConfSupported:Z

    if-eq v2, v3, :cond_1d

    return v1

    .line 128
    :cond_1d
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVideoConfSupported:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVideoConfSupported:Z

    if-eq v2, v3, :cond_1e

    return v1

    .line 131
    :cond_1e
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    return v1

    :cond_1f
    return v0
.end method

.method public final hashCode()I
    .locals 31

    move-object/from16 v0, p0

    .line 139
    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->state:I

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->index:I

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->toa:I

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMpty:Z

    .line 143
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMpty:Z

    .line 144
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMT:Z

    .line 145
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMT:Z

    .line 146
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    .line 147
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->als:I

    .line 148
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoice:Z

    .line 149
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoice:Z

    .line 150
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoicePrivacy:Z

    .line 151
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoicePrivacy:Z

    .line 152
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->number:Ljava/lang/String;

    .line 153
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->numberPresentation:I

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->name:Ljava/lang/String;

    .line 155
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->namePresentation:I

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasCallDetails:Z

    .line 157
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    .line 158
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasFailCause:Z

    .line 159
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    .line 160
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsEncrypted:Z

    .line 161
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isEncrypted:Z

    .line 162
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsCalledPartyRinging:Z

    .line 163
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isCalledPartyRinging:Z

    .line 164
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->historyInfo:Ljava/lang/String;

    .line 165
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVideoConfSupported:Z

    .line 166
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVideoConfSupported:Z

    .line 167
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    iget-object v0, v0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    .line 168
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    filled-new-array/range {v2 .. v30}, [Ljava/lang/Object;

    move-result-object v0

    .line 139
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 9

    .line 265
    invoke-virtual/range {p2 .. p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->state:I

    const-wide/16 v2, 0x4

    add-long/2addr v2, p3

    .line 266
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->index:I

    const-wide/16 v2, 0x8

    add-long/2addr v2, p3

    .line 267
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->toa:I

    const-wide/16 v2, 0xc

    add-long/2addr v2, p3

    .line 268
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMpty:Z

    const-wide/16 v2, 0xd

    add-long/2addr v2, p3

    .line 269
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMpty:Z

    const-wide/16 v2, 0xe

    add-long/2addr v2, p3

    .line 270
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMT:Z

    const-wide/16 v2, 0xf

    add-long/2addr v2, p3

    .line 271
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMT:Z

    .line 272
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    const-wide/16 v3, 0x10

    add-long/2addr v3, p3

    invoke-virtual {v2, p1, p2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v2, 0x28

    add-long/2addr v2, p3

    .line 273
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->als:I

    const-wide/16 v2, 0x2c

    add-long/2addr v2, p3

    .line 274
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoice:Z

    const-wide/16 v2, 0x2d

    add-long/2addr v2, p3

    .line 275
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoice:Z

    const-wide/16 v2, 0x2e

    add-long/2addr v2, p3

    .line 276
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoicePrivacy:Z

    const-wide/16 v2, 0x2f

    add-long/2addr v2, p3

    .line 277
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoicePrivacy:Z

    const-wide/16 v2, 0x30

    add-long v6, p3, v2

    .line 278
    invoke-virtual {p2, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->number:Ljava/lang/String;

    .line 281
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    .line 282
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x0

    move-object v1, p1

    .line 280
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v1, 0x40

    add-long/2addr v1, p3

    .line 285
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->numberPresentation:I

    const-wide/16 v1, 0x48

    add-long v6, p3, v1

    .line 286
    invoke-virtual {p2, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->name:Ljava/lang/String;

    .line 289
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    .line 290
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    move-object v1, p1

    .line 288
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x58

    add-long/2addr v2, p3

    .line 293
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->namePresentation:I

    const-wide/16 v2, 0x5c

    add-long/2addr v2, p3

    .line 294
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasCallDetails:Z

    .line 295
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    const-wide/16 v3, 0x60

    add-long/2addr v3, p3

    invoke-virtual {v2, p1, p2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v2, 0xc0

    add-long/2addr v2, p3

    .line 296
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasFailCause:Z

    .line 297
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    const-wide/16 v3, 0xc8

    add-long/2addr v3, p3

    invoke-virtual {v2, p1, p2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v2, 0x110

    add-long/2addr v2, p3

    .line 298
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsEncrypted:Z

    const-wide/16 v2, 0x111

    add-long/2addr v2, p3

    .line 299
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isEncrypted:Z

    const-wide/16 v2, 0x112

    add-long/2addr v2, p3

    .line 300
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsCalledPartyRinging:Z

    const-wide/16 v2, 0x113

    add-long/2addr v2, p3

    .line 301
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isCalledPartyRinging:Z

    const-wide/16 v2, 0x118

    add-long v6, p3, v2

    .line 302
    invoke-virtual {p2, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->historyInfo:Ljava/lang/String;

    .line 305
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    .line 306
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 304
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x128

    add-long/2addr v2, p3

    .line 309
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVideoConfSupported:Z

    const-wide/16 v2, 0x129

    add-long/2addr v2, p3

    .line 310
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVideoConfSupported:Z

    .line 311
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    const-wide/16 v2, 0x12c

    add-long/2addr v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x138

    .line 238
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 239
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->state:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, ", .index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, ", .toa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->toa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ", .hasIsMpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, ", .isMpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, ", .hasIsMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ", .isMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, ", .mtMultiLineInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, ", .als = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->als:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, ", .hasIsVoice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, ", .isVoice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, ", .hasIsVoicePrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoicePrivacy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, ", .isVoicePrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoicePrivacy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, ", .numberPresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, ", .namePresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, ", .hasCallDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasCallDetails:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ", .callDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, ", .hasFailCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasFailCause:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, ", .failCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, ", .hasIsEncrypted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 219
    const-string v1, ", .isEncrypted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 221
    const-string v1, ", .hasIsCalledPartyRinging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsCalledPartyRinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 223
    const-string v1, ", .isCalledPartyRinging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isCalledPartyRinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 225
    const-string v1, ", .historyInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->historyInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string v1, ", .hasIsVideoConfSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVideoConfSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, ", .isVideoConfSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVideoConfSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 231
    const-string v1, ", .verstatInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 339
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->state:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 340
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->index:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 341
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->toa:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 342
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMpty:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xd

    add-long/2addr v0, p2

    .line 343
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMpty:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xe

    add-long/2addr v0, p2

    .line 344
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMT:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xf

    add-long/2addr v0, p2

    .line 345
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMT:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 346
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    const-wide/16 v1, 0x10

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    .line 347
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->als:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x2c

    add-long/2addr v0, p2

    .line 348
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoice:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x2d

    add-long/2addr v0, p2

    .line 349
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoice:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x2e

    add-long/2addr v0, p2

    .line 350
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoicePrivacy:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x2f

    add-long/2addr v0, p2

    .line 351
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoicePrivacy:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    .line 352
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    .line 353
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->numberPresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    .line 354
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x58

    add-long/2addr v0, p2

    .line 355
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->namePresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x5c

    add-long/2addr v0, p2

    .line 356
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasCallDetails:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 357
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    const-wide/16 v1, 0x60

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0xc0

    add-long/2addr v0, p2

    .line 358
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasFailCause:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 359
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    const-wide/16 v1, 0xc8

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x110

    add-long/2addr v0, p2

    .line 360
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsEncrypted:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x111

    add-long/2addr v0, p2

    .line 361
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isEncrypted:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x112

    add-long/2addr v0, p2

    .line 362
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsCalledPartyRinging:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x113

    add-long/2addr v0, p2

    .line 363
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isCalledPartyRinging:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x118

    add-long/2addr v0, p2

    .line 364
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->historyInfo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x128

    add-long/2addr v0, p2

    .line 365
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVideoConfSupported:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x129

    add-long/2addr v0, p2

    .line 366
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVideoConfSupported:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 367
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    const-wide/16 v0, 0x12c

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 315
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x138

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 316
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 317
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
