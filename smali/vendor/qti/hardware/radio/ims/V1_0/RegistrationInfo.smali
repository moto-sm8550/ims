.class public final Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
.super Ljava/lang/Object;
.source "RegistrationInfo.java"


# instance fields
.field public errorCode:I

.field public errorMessage:Ljava/lang/String;

.field public pAssociatedUris:Ljava/lang/String;

.field public radioTech:I

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    .line 6
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorCode:I

    .line 7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorMessage:Ljava/lang/String;

    .line 8
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->radioTech:I

    .line 9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

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
            "Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 76
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 81
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 80
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 86
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    mul-int/lit8 v5, v1, 0x30

    int-to-long v5, v5

    .line 87
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 88
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
            "Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;",
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

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 131
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    mul-int/lit8 v5, v4, 0x30

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

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

    .line 19
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 22
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    .line 23
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    if-eq v2, v3, :cond_3

    return v1

    .line 26
    :cond_3
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorCode:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorCode:I

    if-eq v2, v3, :cond_4

    return v1

    .line 29
    :cond_4
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorMessage:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorMessage:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 32
    :cond_5
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->radioTech:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->radioTech:I

    if-eq v2, v3, :cond_6

    return v1

    .line 35
    :cond_6
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    .line 43
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorCode:I

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorMessage:Ljava/lang/String;

    .line 46
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->radioTech:I

    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    .line 48
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 43
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 97
    invoke-virtual/range {p2 .. p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    const-wide/16 v2, 0x4

    add-long v2, p3, v2

    .line 98
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorCode:I

    const-wide/16 v2, 0x8

    add-long v9, p3, v2

    .line 99
    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorMessage:Ljava/lang/String;

    .line 102
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v5, v2

    .line 103
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const/4 v11, 0x0

    move-object/from16 v4, p1

    .line 101
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x18

    add-long v2, p3, v2

    .line 106
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->radioTech:I

    const-wide/16 v2, 0x20

    add-long v2, p3, v2

    .line 107
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    .line 110
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v13, v0

    .line 111
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v15

    const/16 v19, 0x0

    move-object/from16 v12, p1

    move-wide/from16 v17, v2

    .line 109
    invoke-virtual/range {v12 .. v19}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x30

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 71
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/RegState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ", .errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ", .errorMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", .radioTech = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->radioTech:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/RadioTechType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", .pAssociatedUris = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 141
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 142
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorCode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 143
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 144
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->radioTech:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x20

    add-long/2addr p2, v0

    .line 145
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 117
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 118
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
