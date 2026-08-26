.class public final Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;
.super Ljava/lang/Object;
.source "MessageWaitingIndication.java"


# instance fields
.field public messageDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;",
            ">;"
        }
    .end annotation
.end field

.field public messageSummary:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;",
            ">;"
        }
    .end annotation
.end field

.field public ueAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

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
            "Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 62
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 67
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 66
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 72
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;-><init>()V

    mul-int/lit8 v5, v1, 0x30

    int-to-long v5, v5

    .line 73
    invoke-virtual {v3, v4, p0, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 74
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
            "Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;",
            ">;)V"
        }
    .end annotation

    .line 126
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 128
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 129
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 130
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 131
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_0
    if-ge v4, v1, :cond_0

    .line 133
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;

    mul-int/lit8 v5, v4, 0x30

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 135
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 138
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

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;

    if-eq v2, v3, :cond_2

    return v1

    .line 20
    :cond_2
    check-cast p1, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;

    .line 21
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 24
    :cond_3
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    iget-object v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 27
    :cond_4
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

    iget-object p1, p1, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 35
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    .line 36
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    .line 37
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

    .line 38
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 35
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 10

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 84
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    mul-int/lit8 v1, v0, 0x14

    int-to-long v3, v1

    .line 86
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    const/4 v9, 0x1

    move-object v2, p1

    move-wide v7, p3

    .line 85
    invoke-virtual/range {v2 .. v9}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p1

    move-object v1, v2

    .line 89
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    move v2, v9

    :goto_0
    if-ge v2, v0, :cond_0

    .line 91
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;-><init>()V

    mul-int/lit8 v4, v2, 0x14

    int-to-long v4, v4

    .line 92
    invoke-virtual {v3, v1, p1, v4, v5}, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 93
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x10

    add-long v6, p3, v2

    .line 96
    invoke-virtual {p2, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    int-to-long v2, p1

    .line 100
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x0

    .line 98
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x20

    add-long v6, p3, v2

    const-wide/16 v2, 0x28

    add-long/2addr p3, v2

    .line 104
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    mul-int/lit8 p3, p1, 0x60

    int-to-long v2, p3

    .line 106
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x1

    .line 105
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p2

    .line 109
    iget-object p3, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    :goto_1
    if-ge v9, p1, :cond_1

    .line 111
    new-instance p3, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;

    invoke-direct {p3}, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;-><init>()V

    mul-int/lit8 p4, v9, 0x60

    int-to-long v2, p4

    .line 112
    invoke-virtual {p3, v1, p2, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 113
    iget-object p4, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3

    const-wide/16 v0, 0x30

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 57
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{.messageSummary = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ", .ueAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, ", .messageDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-object p0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 7

    .line 144
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x8

    add-long/2addr v1, p2

    .line 145
    invoke-virtual {p1, v1, v2, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v1, 0xc

    add-long/2addr v1, p2

    const/4 v3, 0x0

    .line 146
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 147
    new-instance v1, Landroid/os/HwBlob;

    mul-int/lit8 v2, v0, 0x14

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_0

    .line 149
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageSummary:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;

    mul-int/lit8 v5, v2, 0x14

    int-to-long v5, v5

    invoke-virtual {v4, v1, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_0/MessageSummary;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p1, p2, p3, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 153
    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->ueAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 155
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, 0x20

    add-long/2addr v1, p2

    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    .line 156
    invoke-virtual {p1, v4, v5, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x2c

    add-long/2addr p2, v4

    .line 157
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 158
    new-instance p2, Landroid/os/HwBlob;

    mul-int/lit8 p3, v0, 0x60

    invoke-direct {p2, p3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1
    if-ge v3, v0, :cond_1

    .line 160
    iget-object p3, p0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->messageDetails:Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;

    mul-int/lit8 v4, v3, 0x60

    int-to-long v4, v4

    invoke-virtual {p3, p2, v4, v5}, Lvendor/qti/hardware/radio/ims/V1_0/MessageDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 162
    :cond_1
    invoke-virtual {p1, v1, v2, p2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3

    .line 119
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 120
    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
