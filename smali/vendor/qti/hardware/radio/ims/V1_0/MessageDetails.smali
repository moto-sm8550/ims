.class public final Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;
.super Ljava/lang/Object;
.source "MessageDetails.java"


# instance fields
.field public date:Ljava/lang/String;

.field public fromAddress:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public priority:I

.field public subject:Ljava/lang/String;

.field public toAddress:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->toAddress:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->fromAddress:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->subject:Ljava/lang/String;

    .line 8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->date:Ljava/lang/String;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->priority:I

    .line 10
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->id:Ljava/lang/String;

    .line 11
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->type:I

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
            "Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;",
            ">;"
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 90
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 93
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x60

    int-to-long v5, v3

    .line 95
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 94
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 98
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 100
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;-><init>()V

    mul-int/lit8 v5, v1, 0x60

    int-to-long v5, v5

    .line 101
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 102
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
            "Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;",
            ">;)V"
        }
    .end annotation

    .line 158
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 160
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 161
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 162
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 163
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x60

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 165
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;

    mul-int/lit8 v5, v4, 0x60

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 167
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 170
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

    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;

    if-eq v2, v3, :cond_2

    return v1

    .line 24
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;

    .line 25
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->toAddress:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->toAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 28
    :cond_3
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->fromAddress:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->fromAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 31
    :cond_4
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->subject:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->subject:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 34
    :cond_5
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->date:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->date:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 37
    :cond_6
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->priority:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->priority:I

    if-eq v2, v3, :cond_7

    return v1

    .line 40
    :cond_7
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->id:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    return v1

    .line 43
    :cond_8
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->type:I

    iget p1, p1, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->type:I

    if-eq p0, p1, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 8

    .line 51
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->toAddress:Ljava/lang/String;

    .line 52
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->fromAddress:Ljava/lang/String;

    .line 53
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->subject:Ljava/lang/String;

    .line 54
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->date:Ljava/lang/String;

    .line 55
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->priority:I

    .line 56
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->id:Ljava/lang/String;

    .line 57
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->type:I

    .line 58
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    .line 51
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 111
    invoke-virtual/range {p2 .. p4}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->toAddress:Ljava/lang/String;

    .line 114
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v4, v2

    .line 115
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move-wide/from16 v8, p3

    .line 113
    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x10

    add-long v2, p3, v2

    .line 118
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->fromAddress:Ljava/lang/String;

    .line 121
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v12, v4

    .line 122
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    const/16 v18, 0x0

    move-object/from16 v11, p1

    move-wide/from16 v16, v2

    .line 120
    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x20

    add-long v2, p3, v2

    .line 125
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->subject:Ljava/lang/String;

    .line 128
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v12, v4

    .line 129
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    move-wide/from16 v16, v2

    .line 127
    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x30

    add-long v2, p3, v2

    .line 132
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->date:Ljava/lang/String;

    .line 135
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v12, v4

    .line 136
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    move-wide/from16 v16, v2

    .line 134
    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x40

    add-long v2, p3, v2

    .line 139
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->priority:I

    const-wide/16 v2, 0x48

    add-long v2, p3, v2

    .line 140
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->id:Ljava/lang/String;

    .line 143
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v12, v4

    .line 144
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v14

    move-wide/from16 v16, v2

    .line 142
    invoke-virtual/range {v11 .. v18}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x58

    add-long v2, p3, v2

    .line 147
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->type:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x60

    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 85
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.toAddress = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->toAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, ", .fromAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->fromAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ", .subject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", .date = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, ", .priority = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->priority:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/MessagePriority;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, ", .id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->type:I

    invoke-static {p0}, Lvendor/qti/hardware/radio/ims/V1_0/MessageType;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 175
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->toAddress:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 176
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->fromAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 177
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    .line 178
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->date:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    .line 179
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->priority:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    .line 180
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x58

    add-long/2addr p2, v0

    .line 181
    iget p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->type:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 151
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 152
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 153
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
