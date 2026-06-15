.class public final Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;
.super Ljava/lang/Object;
.source "AutoCallRejectionInfo.java"


# instance fields
.field public autoRejectionCause:I

.field public callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

.field public callType:I

.field public ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

.field public number:Ljava/lang/String;

.field public sipErrorCode:S

.field public verificationStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->callType:I

    .line 9
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->autoRejectionCause:I

    .line 10
    iput-short v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->sipErrorCode:S

    .line 14
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->number:Ljava/lang/String;

    .line 15
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->verificationStatus:I

    .line 16
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    .line 17
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

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
            "Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 96
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 99
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0xa8

    int-to-long v5, v3

    .line 101
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 100
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 104
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 106
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;-><init>()V

    mul-int/lit16 v5, v1, 0xa8

    int-to-long v5, v5

    .line 107
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 108
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
            "Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;",
            ">;)V"
        }
    .end annotation

    .line 140
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 142
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 143
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 144
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 145
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xa8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 147
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;

    mul-int/lit16 v5, v4, 0xa8

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 149
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 152
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

    .line 27
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 30
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;

    .line 31
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->callType:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->callType:I

    if-eq v2, v3, :cond_3

    return v1

    .line 34
    :cond_3
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->autoRejectionCause:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->autoRejectionCause:I

    if-eq v2, v3, :cond_4

    return v1

    .line 37
    :cond_4
    iget-short v2, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->sipErrorCode:S

    iget-short v3, p1, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->sipErrorCode:S

    if-eq v2, v3, :cond_5

    return v1

    .line 40
    :cond_5
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->number:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 43
    :cond_6
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->verificationStatus:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->verificationStatus:I

    if-eq v2, v3, :cond_7

    return v1

    .line 46
    :cond_7
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 49
    :cond_8
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 8

    .line 57
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->callType:I

    .line 58
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->autoRejectionCause:I

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-short v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->sipErrorCode:S

    .line 60
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->number:Ljava/lang/String;

    .line 61
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->verificationStatus:I

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    .line 63
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    .line 64
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    .line 57
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    .line 117
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->callType:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 118
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->autoRejectionCause:I

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 119
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->sipErrorCode:S

    const-wide/16 v0, 0x10

    add-long v7, p3, v0

    .line 120
    invoke-virtual {p2, v7, v8}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->number:Ljava/lang/String;

    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v3, v0

    .line 124
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const/4 v9, 0x0

    move-object v2, p1

    .line 122
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    .line 127
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->verificationStatus:I

    .line 128
    iget-object p1, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    invoke-virtual {p1, v2, p2, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 129
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    const-wide/16 v0, 0x68

    add-long/2addr p3, v0

    invoke-virtual {p0, v2, p2, p3, p4}, Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0xa8

    .line 90
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 91
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.callType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->callType:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_6/CallType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", .autoRejectionCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->autoRejectionCause:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", .sipErrorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-short v1, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->sipErrorCode:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, ", .verificationStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->verificationStatus:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_2/VerificationStatus;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", .callComposerInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", .ecnamInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 157
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->callType:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 158
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->autoRejectionCause:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 159
    iget-short v2, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->sipErrorCode:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 160
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 161
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->verificationStatus:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 162
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->callComposerInfo:Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    const-wide/16 v1, 0x28

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 163
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->ecnamInfo:Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;

    const-wide/16 v0, 0x68

    add-long/2addr p2, v0

    invoke-virtual {p0, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/V1_10/EcnamInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 133
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xa8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 134
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_10/AutoCallRejectionInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
