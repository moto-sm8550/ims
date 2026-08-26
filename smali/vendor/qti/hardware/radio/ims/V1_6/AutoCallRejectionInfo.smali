.class public final Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;
.super Ljava/lang/Object;
.source "AutoCallRejectionInfo.java"


# instance fields
.field public autoRejectionCause:I

.field public callType:I

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
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->callType:I

    .line 9
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->autoRejectionCause:I

    .line 10
    iput-short v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->sipErrorCode:S

    .line 14
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->number:Ljava/lang/String;

    .line 15
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->verificationStatus:I

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
            "Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 82
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 85
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x28

    int-to-long v5, v3

    .line 87
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 86
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 92
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;-><init>()V

    mul-int/lit8 v5, v1, 0x28

    int-to-long v5, v5

    .line 93
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 94
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
            "Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;",
            ">;)V"
        }
    .end annotation

    .line 124
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 126
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 127
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 128
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 129
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x28

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 131
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;

    mul-int/lit8 v5, v4, 0x28

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 133
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 136
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

    .line 25
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 28
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;

    .line 29
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->callType:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->callType:I

    if-eq v2, v3, :cond_3

    return v1

    .line 32
    :cond_3
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->autoRejectionCause:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->autoRejectionCause:I

    if-eq v2, v3, :cond_4

    return v1

    .line 35
    :cond_4
    iget-short v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->sipErrorCode:S

    iget-short v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->sipErrorCode:S

    if-eq v2, v3, :cond_5

    return v1

    .line 38
    :cond_5
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->number:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 41
    :cond_6
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->verificationStatus:I

    iget p1, p1, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->verificationStatus:I

    if-eq p0, p1, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 49
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->callType:I

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->autoRejectionCause:I

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-short v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->sipErrorCode:S

    .line 52
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->number:Ljava/lang/String;

    .line 53
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->verificationStatus:I

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 49
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    .line 103
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->callType:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 104
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->autoRejectionCause:I

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 105
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v0

    iput-short v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->sipErrorCode:S

    const-wide/16 v0, 0x10

    add-long v7, p3, v0

    .line 106
    invoke-virtual {p2, v7, v8}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->number:Ljava/lang/String;

    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v3, v0

    .line 110
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const/4 v9, 0x0

    move-object v2, p1

    .line 108
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v0, 0x20

    add-long/2addr p3, v0

    .line 113
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->verificationStatus:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x28

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 77
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.callType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->callType:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_6/CallType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", .autoRejectionCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->autoRejectionCause:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, ", .sipErrorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-short v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->sipErrorCode:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", .verificationStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->verificationStatus:I

    invoke-static {p0}, Lvendor/qti/hardware/radio/ims/V1_2/VerificationStatus;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 141
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->callType:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 142
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->autoRejectionCause:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 143
    iget-short v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->sipErrorCode:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 144
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x20

    add-long/2addr p2, v0

    .line 145
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->verificationStatus:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 117
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 118
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
