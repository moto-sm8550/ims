.class public final Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;
.super Ljava/lang/Object;
.source "SuppServiceNotification.java"


# instance fields
.field public code:I

.field public connId:I

.field public hasHoldTone:Z

.field public historyInfo:Ljava/lang/String;

.field public holdTone:Z

.field public index:I

.field public notificationType:I

.field public number:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->notificationType:I

    .line 6
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->code:I

    .line 7
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->index:I

    .line 8
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->type:I

    .line 9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->number:Ljava/lang/String;

    .line 10
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->connId:I

    .line 11
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->historyInfo:Ljava/lang/String;

    .line 12
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->hasHoldTone:Z

    .line 13
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->holdTone:Z

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
            "Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 104
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 107
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x40

    int-to-long v5, v3

    .line 109
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 108
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 112
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 114
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;-><init>()V

    mul-int/lit8 v5, v1, 0x40

    int-to-long v5, v5

    .line 115
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 116
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
            "Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;",
            ">;)V"
        }
    .end annotation

    .line 156
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 158
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 159
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 160
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 161
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x40

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 163
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;

    mul-int/lit8 v5, v4, 0x40

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 165
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 168
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

    .line 23
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;

    if-eq v2, v3, :cond_2

    return v1

    .line 26
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;

    .line 27
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->notificationType:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->notificationType:I

    if-eq v2, v3, :cond_3

    return v1

    .line 30
    :cond_3
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->code:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->code:I

    if-eq v2, v3, :cond_4

    return v1

    .line 33
    :cond_4
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->index:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->index:I

    if-eq v2, v3, :cond_5

    return v1

    .line 36
    :cond_5
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->type:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->type:I

    if-eq v2, v3, :cond_6

    return v1

    .line 39
    :cond_6
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->number:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 42
    :cond_7
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->connId:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->connId:I

    if-eq v2, v3, :cond_8

    return v1

    .line 45
    :cond_8
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->historyInfo:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->historyInfo:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 48
    :cond_9
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->hasHoldTone:Z

    iget-boolean v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->hasHoldTone:Z

    if-eq v2, v3, :cond_a

    return v1

    .line 51
    :cond_a
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->holdTone:Z

    iget-boolean p1, p1, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->holdTone:Z

    if-eq p0, p1, :cond_b

    return v1

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 10

    .line 59
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->notificationType:I

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->code:I

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->index:I

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->type:I

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->number:Ljava/lang/String;

    .line 64
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->connId:I

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->historyInfo:Ljava/lang/String;

    .line 66
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->hasHoldTone:Z

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->holdTone:Z

    .line 68
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    .line 59
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 125
    invoke-virtual/range {p2 .. p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->notificationType:I

    const-wide/16 v2, 0x4

    add-long v2, p3, v2

    .line 126
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->code:I

    const-wide/16 v2, 0x8

    add-long v2, p3, v2

    .line 127
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->index:I

    const-wide/16 v2, 0xc

    add-long v2, p3, v2

    .line 128
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->type:I

    const-wide/16 v2, 0x10

    add-long v9, p3, v2

    .line 129
    invoke-virtual {v1, v9, v10}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->number:Ljava/lang/String;

    .line 132
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v5, v2

    .line 133
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const/4 v11, 0x0

    move-object/from16 v4, p1

    .line 131
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x20

    add-long v2, p3, v2

    .line 136
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->connId:I

    const-wide/16 v2, 0x28

    add-long v2, p3, v2

    .line 137
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->historyInfo:Ljava/lang/String;

    .line 140
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    int-to-long v13, v4

    .line 141
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v15

    const/16 v19, 0x0

    move-object/from16 v12, p1

    move-wide/from16 v17, v2

    .line 139
    invoke-virtual/range {v12 .. v19}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x38

    add-long v2, p3, v2

    .line 144
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->hasHoldTone:Z

    const-wide/16 v2, 0x39

    add-long v2, p3, v2

    .line 145
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->holdTone:Z

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x40

    .line 98
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 99
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.notificationType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->notificationType:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/NotificationType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", .code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, ", .index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v1, ", .type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", .connId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->connId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", .historyInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->historyInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", .hasHoldTone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->hasHoldTone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ", .holdTone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->holdTone:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3

    .line 173
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->notificationType:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 174
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->code:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 175
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->index:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 176
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->type:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 177
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 178
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->connId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    .line 179
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->historyInfo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x38

    add-long/2addr v0, p2

    .line 180
    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->hasHoldTone:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x39

    add-long/2addr p2, v0

    .line 181
    iget-boolean p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->holdTone:Z

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putBool(JZ)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 149
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 150
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 151
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
