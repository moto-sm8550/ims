.class public final Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
.super Ljava/lang/Object;
.source "CallComposerInfo.java"


# instance fields
.field public callId:I

.field public imageUrl:Ljava/lang/String;

.field public location:Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;

.field public priority:I

.field public subject:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->callId:I

    .line 6
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->priority:I

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->subject:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;

    .line 9
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->imageUrl:Ljava/lang/String;

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
            "Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;",
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

    mul-int/lit8 v3, v2, 0x40

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
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;-><init>()V

    mul-int/lit8 v5, v1, 0x40

    int-to-long v5, v5

    .line 87
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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
            "Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;",
            ">;)V"
        }
    .end annotation

    .line 130
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 132
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 133
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 134
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 135
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x40

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 137
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    mul-int/lit8 v5, v4, 0x40

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 139
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 142
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

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    if-eq v2, v3, :cond_2

    return v1

    .line 22
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    .line 23
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->callId:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->callId:I

    if-eq v2, v3, :cond_3

    return v1

    .line 26
    :cond_3
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->priority:I

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->priority:I

    if-eq v2, v3, :cond_4

    return v1

    .line 29
    :cond_4
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->subject:Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->subject:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 32
    :cond_5
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    .line 35
    :cond_6
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->imageUrl:Ljava/lang/String;

    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->imageUrl:Ljava/lang/String;

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
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->callId:I

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->priority:I

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->subject:Ljava/util/ArrayList;

    .line 46
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;

    .line 47
    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->imageUrl:Ljava/lang/String;

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
    .locals 10

    .line 97
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->callId:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 98
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->priority:I

    const-wide/16 v0, 0x8

    add-long v7, p3, v0

    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    .line 100
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    int-to-long v3, v1

    .line 102
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const/4 v9, 0x1

    move-object v2, p1

    .line 101
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p1

    move-object v1, v2

    .line 105
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->subject:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v3, v2, 0x2

    int-to-long v3, v3

    .line 108
    invoke-virtual {p1, v3, v4}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v3

    .line 109
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->subject:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;

    const-wide/16 v2, 0x18

    add-long/2addr v2, p3

    invoke-virtual {p1, v1, p2, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v2, 0x30

    add-long v6, p3, v2

    .line 113
    invoke-virtual {p2, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->imageUrl:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    add-int/lit8 p0, p0, 0x1

    int-to-long v2, p0

    .line 117
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x0

    .line 115
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x40

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 71
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.callId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->callId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ", .priority = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->priority:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_6/CallPriority;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v1, ", .subject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->subject:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", .location = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, ", .imageUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->imageUrl:Ljava/lang/String;

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
    .locals 8

    .line 147
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->callId:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 148
    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->priority:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 150
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->subject:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x8

    add-long/2addr v1, p2

    const-wide/16 v3, 0x10

    add-long/2addr v3, p2

    .line 151
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0x14

    add-long/2addr v3, p2

    const/4 v5, 0x0

    .line 152
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 153
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x2

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v5, v0, :cond_0

    mul-int/lit8 v4, v5, 0x2

    int-to-long v6, v4

    .line 155
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->subject:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-virtual {v3, v6, v7, v4}, Landroid/os/HwBlob;->putInt16(JS)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 159
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;

    const-wide/16 v1, 0x18

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x30

    add-long/2addr p2, v0

    .line 160
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 123
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 124
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
