.class public final Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;
.super Ljava/lang/Object;
.source "CallInfo.java"


# instance fields
.field public als:I

.field public callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

.field public failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

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


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->state:I

    .line 6
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->index:I

    .line 7
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->toa:I

    .line 8
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMpty:Z

    .line 9
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMpty:Z

    .line 10
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMT:Z

    .line 11
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMT:Z

    .line 12
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->als:I

    .line 13
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoice:Z

    .line 14
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoice:Z

    .line 15
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoicePrivacy:Z

    .line 16
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoicePrivacy:Z

    .line 17
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->number:Ljava/lang/String;

    .line 18
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->numberPresentation:I

    .line 19
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->name:Ljava/lang/String;

    .line 20
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->namePresentation:I

    .line 21
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasCallDetails:Z

    .line 22
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    .line 23
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasFailCause:Z

    .line 24
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    .line 25
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsEncrypted:Z

    .line 26
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isEncrypted:Z

    .line 27
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsCalledPartyRinging:Z

    .line 28
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isCalledPartyRinging:Z

    .line 29
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->historyInfo:Ljava/lang/String;

    .line 30
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVideoConfSupported:Z

    .line 31
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVideoConfSupported:Z

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
            "Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 230
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 233
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0x118

    int-to-long v5, v3

    .line 235
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 234
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 238
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 240
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;-><init>()V

    mul-int/lit16 v5, v1, 0x118

    int-to-long v5, v5

    .line 241
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 242
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
            "Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 306
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 308
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 309
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 310
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 311
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x118

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 313
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;

    mul-int/lit16 v5, v4, 0x118

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 315
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 318
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

    .line 41
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 44
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;

    .line 45
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->state:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->state:I

    if-eq v2, v3, :cond_3

    return v1

    .line 48
    :cond_3
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->index:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->index:I

    if-eq v2, v3, :cond_4

    return v1

    .line 51
    :cond_4
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->toa:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->toa:I

    if-eq v2, v3, :cond_5

    return v1

    .line 54
    :cond_5
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMpty:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMpty:Z

    if-eq v2, v3, :cond_6

    return v1

    .line 57
    :cond_6
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMpty:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMpty:Z

    if-eq v2, v3, :cond_7

    return v1

    .line 60
    :cond_7
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMT:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMT:Z

    if-eq v2, v3, :cond_8

    return v1

    .line 63
    :cond_8
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMT:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMT:Z

    if-eq v2, v3, :cond_9

    return v1

    .line 66
    :cond_9
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->als:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->als:I

    if-eq v2, v3, :cond_a

    return v1

    .line 69
    :cond_a
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoice:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoice:Z

    if-eq v2, v3, :cond_b

    return v1

    .line 72
    :cond_b
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoice:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoice:Z

    if-eq v2, v3, :cond_c

    return v1

    .line 75
    :cond_c
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoicePrivacy:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoicePrivacy:Z

    if-eq v2, v3, :cond_d

    return v1

    .line 78
    :cond_d
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoicePrivacy:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoicePrivacy:Z

    if-eq v2, v3, :cond_e

    return v1

    .line 81
    :cond_e
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->number:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 84
    :cond_f
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->numberPresentation:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->numberPresentation:I

    if-eq v2, v3, :cond_10

    return v1

    .line 87
    :cond_10
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 90
    :cond_11
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->namePresentation:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->namePresentation:I

    if-eq v2, v3, :cond_12

    return v1

    .line 93
    :cond_12
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasCallDetails:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasCallDetails:Z

    if-eq v2, v3, :cond_13

    return v1

    .line 96
    :cond_13
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    return v1

    .line 99
    :cond_14
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasFailCause:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasFailCause:Z

    if-eq v2, v3, :cond_15

    return v1

    .line 102
    :cond_15
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    .line 105
    :cond_16
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsEncrypted:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsEncrypted:Z

    if-eq v2, v3, :cond_17

    return v1

    .line 108
    :cond_17
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isEncrypted:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isEncrypted:Z

    if-eq v2, v3, :cond_18

    return v1

    .line 111
    :cond_18
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsCalledPartyRinging:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsCalledPartyRinging:Z

    if-eq v2, v3, :cond_19

    return v1

    .line 114
    :cond_19
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isCalledPartyRinging:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isCalledPartyRinging:Z

    if-eq v2, v3, :cond_1a

    return v1

    .line 117
    :cond_1a
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->historyInfo:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->historyInfo:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    return v1

    .line 120
    :cond_1b
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVideoConfSupported:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVideoConfSupported:Z

    if-eq v2, v3, :cond_1c

    return v1

    .line 123
    :cond_1c
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVideoConfSupported:Z

    iget-boolean p1, p1, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVideoConfSupported:Z

    if-eq p0, p1, :cond_1d

    return v1

    :cond_1d
    return v0
.end method

.method public final hashCode()I
    .locals 29

    move-object/from16 v0, p0

    .line 131
    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->state:I

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->index:I

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->toa:I

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMpty:Z

    .line 135
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMpty:Z

    .line 136
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMT:Z

    .line 137
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMT:Z

    .line 138
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->als:I

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoice:Z

    .line 140
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoice:Z

    .line 141
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoicePrivacy:Z

    .line 142
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoicePrivacy:Z

    .line 143
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->number:Ljava/lang/String;

    .line 144
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->numberPresentation:I

    .line 145
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->name:Ljava/lang/String;

    .line 146
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->namePresentation:I

    .line 147
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasCallDetails:Z

    .line 148
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    .line 149
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasFailCause:Z

    .line 150
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    .line 151
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsEncrypted:Z

    .line 152
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isEncrypted:Z

    .line 153
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsCalledPartyRinging:Z

    .line 154
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isCalledPartyRinging:Z

    .line 155
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->historyInfo:Ljava/lang/String;

    .line 156
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    iget-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVideoConfSupported:Z

    .line 157
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    iget-boolean v0, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVideoConfSupported:Z

    .line 158
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    filled-new-array/range {v2 .. v28}, [Ljava/lang/Object;

    move-result-object v0

    .line 131
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 8

    .line 251
    invoke-virtual/range {p2 .. p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->state:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 252
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->index:I

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 253
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->toa:I

    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    .line 254
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMpty:Z

    const-wide/16 v0, 0xd

    add-long/2addr v0, p3

    .line 255
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMpty:Z

    const-wide/16 v0, 0xe

    add-long/2addr v0, p3

    .line 256
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMT:Z

    const-wide/16 v0, 0xf

    add-long/2addr v0, p3

    .line 257
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMT:Z

    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    .line 258
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->als:I

    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    .line 259
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoice:Z

    const-wide/16 v0, 0x15

    add-long/2addr v0, p3

    .line 260
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoice:Z

    const-wide/16 v0, 0x16

    add-long/2addr v0, p3

    .line 261
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoicePrivacy:Z

    const-wide/16 v0, 0x17

    add-long/2addr v0, p3

    .line 262
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoicePrivacy:Z

    const-wide/16 v0, 0x18

    add-long v5, p3, v0

    .line 263
    invoke-virtual {p2, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->number:Ljava/lang/String;

    .line 266
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v1, v0

    .line 267
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    const/4 v7, 0x0

    move-object v0, p1

    .line 265
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    .line 270
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->numberPresentation:I

    const-wide/16 v0, 0x30

    add-long v5, p3, v0

    .line 271
    invoke-virtual {p2, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->name:Ljava/lang/String;

    .line 274
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v1, v0

    .line 275
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    move-object v0, p1

    .line 273
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v1, 0x40

    add-long/2addr v1, p3

    .line 278
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->namePresentation:I

    const-wide/16 v1, 0x44

    add-long/2addr v1, p3

    .line 279
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasCallDetails:Z

    .line 280
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    const-wide/16 v2, 0x48

    add-long/2addr v2, p3

    invoke-virtual {v1, p1, p2, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v1, 0xa8

    add-long/2addr v1, p3

    .line 281
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasFailCause:Z

    .line 282
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    const-wide/16 v2, 0xb0

    add-long/2addr v2, p3

    invoke-virtual {v1, p1, p2, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v1, 0xf8

    add-long/2addr v1, p3

    .line 283
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsEncrypted:Z

    const-wide/16 v1, 0xf9

    add-long/2addr v1, p3

    .line 284
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isEncrypted:Z

    const-wide/16 v1, 0xfa

    add-long/2addr v1, p3

    .line 285
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsCalledPartyRinging:Z

    const-wide/16 v1, 0xfb

    add-long/2addr v1, p3

    .line 286
    invoke-virtual {p2, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isCalledPartyRinging:Z

    const-wide/16 v1, 0x100

    add-long v5, p3, v1

    .line 287
    invoke-virtual {p2, v5, v6}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->historyInfo:Ljava/lang/String;

    .line 290
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v1, v1

    .line 291
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v3

    .line 289
    invoke-virtual/range {v0 .. v7}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v0, 0x110

    add-long/2addr v0, p3

    .line 294
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVideoConfSupported:Z

    const-wide/16 v0, 0x111

    add-long/2addr v0, p3

    .line 295
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVideoConfSupported:Z

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x118

    .line 224
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 225
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->state:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v1, ", .index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, ", .toa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->toa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, ", .hasIsMpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, ", .isMpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, ", .hasIsMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, ", .isMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 179
    const-string v1, ", .als = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->als:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ", .hasIsVoice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    const-string v1, ", .isVoice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, ", .hasIsVoicePrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoicePrivacy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, ", .isVoicePrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoicePrivacy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, ", .numberPresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, ", .namePresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, ", .hasCallDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasCallDetails:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, ", .callDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, ", .hasFailCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasFailCause:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, ", .failCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, ", .hasIsEncrypted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 207
    const-string v1, ", .isEncrypted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 209
    const-string v1, ", .hasIsCalledPartyRinging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsCalledPartyRinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ", .isCalledPartyRinging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isCalledPartyRinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 213
    const-string v1, ", .historyInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->historyInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string v1, ", .hasIsVideoConfSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVideoConfSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 217
    const-string v1, ", .isVideoConfSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVideoConfSupported:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 219
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 323
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->state:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 324
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->index:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 325
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->toa:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 326
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMpty:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xd

    add-long/2addr v0, p2

    .line 327
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMpty:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xe

    add-long/2addr v0, p2

    .line 328
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsMT:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xf

    add-long/2addr v0, p2

    .line 329
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isMT:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 330
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->als:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    .line 331
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoice:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x15

    add-long/2addr v0, p2

    .line 332
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoice:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x16

    add-long/2addr v0, p2

    .line 333
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVoicePrivacy:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x17

    add-long/2addr v0, p2

    .line 334
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVoicePrivacy:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 335
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    .line 336
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->numberPresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    .line 337
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    .line 338
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->namePresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x44

    add-long/2addr v0, p2

    .line 339
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasCallDetails:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 340
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    const-wide/16 v1, 0x48

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0xa8

    add-long/2addr v0, p2

    .line 341
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasFailCause:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 342
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;

    const-wide/16 v1, 0xb0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallFailCauseResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0xf8

    add-long/2addr v0, p2

    .line 343
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsEncrypted:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xf9

    add-long/2addr v0, p2

    .line 344
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isEncrypted:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xfa

    add-long/2addr v0, p2

    .line 345
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsCalledPartyRinging:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xfb

    add-long/2addr v0, p2

    .line 346
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isCalledPartyRinging:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x100

    add-long/2addr v0, p2

    .line 347
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->historyInfo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x110

    add-long/2addr v0, p2

    .line 348
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->hasIsVideoConfSupported:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x111

    add-long/2addr p2, v0

    .line 349
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->isVideoConfSupported:Z

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putBool(JZ)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 299
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x118

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 300
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 301
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
