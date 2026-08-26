.class public final Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;
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
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->state:I

    .line 6
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->index:I

    .line 7
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->toa:I

    .line 8
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMpty:Z

    .line 9
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMpty:Z

    .line 10
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMT:Z

    .line 11
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMT:Z

    .line 12
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->als:I

    .line 13
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoice:Z

    .line 14
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoice:Z

    .line 15
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoicePrivacy:Z

    .line 16
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoicePrivacy:Z

    .line 17
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->number:Ljava/lang/String;

    .line 18
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->numberPresentation:I

    .line 19
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->name:Ljava/lang/String;

    .line 20
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->namePresentation:I

    .line 21
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasCallDetails:Z

    .line 22
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    .line 23
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasFailCause:Z

    .line 24
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    .line 25
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsEncrypted:Z

    .line 26
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isEncrypted:Z

    .line 27
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsCalledPartyRinging:Z

    .line 28
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isCalledPartyRinging:Z

    .line 29
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->historyInfo:Ljava/lang/String;

    .line 30
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVideoConfSupported:Z

    .line 31
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVideoConfSupported:Z

    .line 32
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

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
            "Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 237
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 240
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0x120

    int-to-long v5, v3

    .line 242
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 241
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 245
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 247
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;-><init>()V

    mul-int/lit16 v5, v1, 0x120

    int-to-long v5, v5

    .line 248
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 249
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
            "Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 314
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 316
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 317
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 318
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 319
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x120

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 321
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;

    mul-int/lit16 v5, v4, 0x120

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 323
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 326
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

    .line 42
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 45
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;

    .line 46
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->state:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->state:I

    if-eq v2, v3, :cond_3

    return v1

    .line 49
    :cond_3
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->index:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->index:I

    if-eq v2, v3, :cond_4

    return v1

    .line 52
    :cond_4
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->toa:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->toa:I

    if-eq v2, v3, :cond_5

    return v1

    .line 55
    :cond_5
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMpty:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMpty:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 58
    :cond_6
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMpty:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMpty:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 61
    :cond_7
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMT:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMT:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 64
    :cond_8
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMT:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMT:Z

    if-eq v2, v3, :cond_9

    return v1

    .line 67
    :cond_9
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->als:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->als:I

    if-eq v2, v3, :cond_a

    return v1

    .line 70
    :cond_a
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoice:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoice:Z

    if-eq v2, v3, :cond_b

    return v1

    .line 73
    :cond_b
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoice:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoice:Z

    if-eq v2, v3, :cond_c

    return v1

    .line 76
    :cond_c
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoicePrivacy:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoicePrivacy:Z

    if-eq v2, v3, :cond_d

    return v1

    .line 79
    :cond_d
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoicePrivacy:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoicePrivacy:Z

    if-eq v2, v3, :cond_e

    return v1

    .line 82
    :cond_e
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->number:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 85
    :cond_f
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->numberPresentation:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->numberPresentation:I

    if-eq v2, v3, :cond_10

    return v1

    .line 88
    :cond_10
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 91
    :cond_11
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->namePresentation:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->namePresentation:I

    if-eq v2, v3, :cond_12

    return v1

    .line 94
    :cond_12
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasCallDetails:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasCallDetails:Z

    if-eq v2, v3, :cond_13

    return v1

    .line 97
    :cond_13
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    .line 100
    :cond_14
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasFailCause:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasFailCause:Z

    if-eq v2, v3, :cond_15

    return v1

    .line 103
    :cond_15
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 106
    :cond_16
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsEncrypted:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsEncrypted:Z

    if-eq v2, v3, :cond_17

    return v1

    .line 109
    :cond_17
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isEncrypted:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isEncrypted:Z

    if-eq v2, v3, :cond_18

    return v1

    .line 112
    :cond_18
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsCalledPartyRinging:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsCalledPartyRinging:Z

    if-eq v2, v3, :cond_19

    return v1

    .line 115
    :cond_19
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isCalledPartyRinging:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isCalledPartyRinging:Z

    if-eq v2, v3, :cond_1a

    return v1

    .line 118
    :cond_1a
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->historyInfo:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->historyInfo:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    return v1

    .line 121
    :cond_1b
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVideoConfSupported:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVideoConfSupported:Z

    if-eq v2, v3, :cond_1c

    return v1

    .line 124
    :cond_1c
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVideoConfSupported:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVideoConfSupported:Z

    if-eq v2, v3, :cond_1d

    return v1

    .line 127
    :cond_1d
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v1

    :cond_1e
    return v0
.end method

.method public final hashCode()I
    .locals 30

    move-object/from16 v0, p0

    .line 135
    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->state:I

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->index:I

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->toa:I

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMpty:Z

    .line 139
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMpty:Z

    .line 140
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMT:Z

    .line 141
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMT:Z

    .line 142
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->als:I

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoice:Z

    .line 144
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoice:Z

    .line 145
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoicePrivacy:Z

    .line 146
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoicePrivacy:Z

    .line 147
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->number:Ljava/lang/String;

    .line 148
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->numberPresentation:I

    .line 149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->name:Ljava/lang/String;

    .line 150
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->namePresentation:I

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasCallDetails:Z

    .line 152
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    .line 153
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasFailCause:Z

    .line 154
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    .line 155
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsEncrypted:Z

    .line 156
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isEncrypted:Z

    .line 157
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsCalledPartyRinging:Z

    .line 158
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isCalledPartyRinging:Z

    .line 159
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->historyInfo:Ljava/lang/String;

    .line 160
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVideoConfSupported:Z

    .line 161
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVideoConfSupported:Z

    .line 162
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    iget-object v0, v0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    .line 163
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    filled-new-array/range {v2 .. v29}, [Ljava/lang/Object;

    move-result-object v0

    .line 135
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 9

    .line 258
    invoke-virtual/range {p2 .. p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->state:I

    const-wide/16 v1, 0x4

    add-long/2addr v1, p3

    .line 259
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->index:I

    const-wide/16 v1, 0x8

    add-long/2addr v1, p3

    .line 260
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->toa:I

    const-wide/16 v1, 0xc

    add-long/2addr v1, p3

    .line 261
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMpty:Z

    const-wide/16 v1, 0xd

    add-long/2addr v1, p3

    .line 262
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMpty:Z

    const-wide/16 v1, 0xe

    add-long/2addr v1, p3

    .line 263
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMT:Z

    const-wide/16 v1, 0xf

    add-long/2addr v1, p3

    .line 264
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMT:Z

    const-wide/16 v1, 0x10

    add-long/2addr v1, p3

    .line 265
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->als:I

    const-wide/16 v1, 0x14

    add-long/2addr v1, p3

    .line 266
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoice:Z

    const-wide/16 v1, 0x15

    add-long/2addr v1, p3

    .line 267
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoice:Z

    const-wide/16 v1, 0x16

    add-long/2addr v1, p3

    .line 268
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoicePrivacy:Z

    const-wide/16 v1, 0x17

    add-long/2addr v1, p3

    .line 269
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoicePrivacy:Z

    const-wide/16 v1, 0x18

    add-long v6, p3, v1

    .line 270
    invoke-virtual {p2, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->number:Ljava/lang/String;

    .line 273
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    .line 274
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x0

    move-object v1, p1

    .line 272
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v1, 0x28

    add-long/2addr v1, p3

    .line 277
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->numberPresentation:I

    const-wide/16 v1, 0x30

    add-long v6, p3, v1

    .line 278
    invoke-virtual {p2, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->name:Ljava/lang/String;

    .line 281
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    .line 282
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    move-object v1, p1

    .line 280
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x40

    add-long/2addr v2, p3

    .line 285
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->namePresentation:I

    const-wide/16 v2, 0x44

    add-long/2addr v2, p3

    .line 286
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasCallDetails:Z

    .line 287
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    const-wide/16 v3, 0x48

    add-long/2addr v3, p3

    invoke-virtual {v2, p1, p2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v2, 0xa8

    add-long/2addr v2, p3

    .line 288
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasFailCause:Z

    .line 289
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    const-wide/16 v3, 0xb0

    add-long/2addr v3, p3

    invoke-virtual {v2, p1, p2, v3, v4}, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v2, 0xf8

    add-long/2addr v2, p3

    .line 290
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsEncrypted:Z

    const-wide/16 v2, 0xf9

    add-long/2addr v2, p3

    .line 291
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isEncrypted:Z

    const-wide/16 v2, 0xfa

    add-long/2addr v2, p3

    .line 292
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsCalledPartyRinging:Z

    const-wide/16 v2, 0xfb

    add-long/2addr v2, p3

    .line 293
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isCalledPartyRinging:Z

    const-wide/16 v2, 0x100

    add-long v6, p3, v2

    .line 294
    invoke-virtual {p2, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->historyInfo:Ljava/lang/String;

    .line 297
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    .line 298
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    .line 296
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x110

    add-long/2addr v2, p3

    .line 301
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVideoConfSupported:Z

    const-wide/16 v2, 0x111

    add-long/2addr v2, p3

    .line 302
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVideoConfSupported:Z

    .line 303
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    const-wide/16 v2, 0x114

    add-long/2addr v2, p3

    invoke-virtual {v0, p1, p2, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x120

    .line 231
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 232
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->state:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, ", .index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, ", .toa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->toa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, ", .hasIsMpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, ", .isMpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, ", .hasIsMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, ", .isMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, ", .als = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->als:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, ", .hasIsVoice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, ", .isVoice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, ", .hasIsVoicePrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoicePrivacy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 192
    const-string v1, ", .isVoicePrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoicePrivacy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, ", .numberPresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, ", .namePresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, ", .hasCallDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasCallDetails:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, ", .callDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, ", .hasFailCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasFailCause:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, ", .failCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, ", .hasIsEncrypted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 212
    const-string v1, ", .isEncrypted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, ", .hasIsCalledPartyRinging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsCalledPartyRinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, ", .isCalledPartyRinging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isCalledPartyRinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, ", .historyInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->historyInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, ", .hasIsVideoConfSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVideoConfSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, ", .isVideoConfSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVideoConfSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 224
    const-string v1, ", .verstatInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 331
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->state:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 332
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->index:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 333
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->toa:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 334
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMpty:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xd

    add-long/2addr v0, p2

    .line 335
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMpty:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xe

    add-long/2addr v0, p2

    .line 336
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsMT:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xf

    add-long/2addr v0, p2

    .line 337
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isMT:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 338
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->als:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    .line 339
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoice:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x15

    add-long/2addr v0, p2

    .line 340
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoice:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x16

    add-long/2addr v0, p2

    .line 341
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVoicePrivacy:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x17

    add-long/2addr v0, p2

    .line 342
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVoicePrivacy:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 343
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    .line 344
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->numberPresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    .line 345
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    .line 346
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->namePresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x44

    add-long/2addr v0, p2

    .line 347
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasCallDetails:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 348
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    const-wide/16 v1, 0x48

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0xa8

    add-long/2addr v0, p2

    .line 349
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasFailCause:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 350
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    const-wide/16 v1, 0xb0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0xf8

    add-long/2addr v0, p2

    .line 351
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsEncrypted:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xf9

    add-long/2addr v0, p2

    .line 352
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isEncrypted:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xfa

    add-long/2addr v0, p2

    .line 353
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsCalledPartyRinging:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xfb

    add-long/2addr v0, p2

    .line 354
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isCalledPartyRinging:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x100

    add-long/2addr v0, p2

    .line 355
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->historyInfo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x110

    add-long/2addr v0, p2

    .line 356
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->hasIsVideoConfSupported:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x111

    add-long/2addr v0, p2

    .line 357
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->isVideoConfSupported:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 358
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    const-wide/16 v0, 0x114

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 307
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x120

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 308
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 309
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
