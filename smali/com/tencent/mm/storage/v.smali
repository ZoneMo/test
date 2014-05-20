.class public final Lcom/tencent/mm/storage/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bPE:Ljava/lang/String;

.field private ddM:Ljava/lang/String;

.field private ddQ:I

.field private ggO:I

.field private ggP:I

.field private ggQ:I

.field private ggR:Ljava/lang/String;

.field private ggS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/storage/v;->ddQ:I

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/tencent/mm/storage/v;->bPE:Ljava/lang/String;

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/mm/storage/v;->ddQ:I

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/tencent/mm/storage/v;->bPE:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/tencent/mm/storage/v;->ddQ:I

    .line 75
    iput p3, p0, Lcom/tencent/mm/storage/v;->ggO:I

    .line 76
    iput-object p4, p0, Lcom/tencent/mm/storage/v;->ggS:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public final Lh()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tencent/mm/storage/v;->ddM:Ljava/lang/String;

    return-object v0
.end method

.method public final aAV()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/tencent/mm/storage/v;->ddQ:I

    return v0
.end method

.method public final aAW()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/tencent/mm/storage/v;->ggO:I

    return v0
.end method

.method public final aAX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tencent/mm/storage/v;->ggS:Ljava/lang/String;

    return-object v0
.end method

.method public final aAY()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/tencent/mm/storage/v;->ggP:I

    return v0
.end method

.method public final aAZ()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/tencent/mm/storage/v;->ggQ:I

    return v0
.end method

.method public final aBa()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/tencent/mm/storage/v;->ggR:Ljava/lang/String;

    return-object v0
.end method

.method public final jn(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tencent/mm/storage/v;->bPE:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public final lR(I)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput p1, p0, Lcom/tencent/mm/storage/v;->ddQ:I

    .line 101
    return-void
.end method

.method public final lS(I)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput p1, p0, Lcom/tencent/mm/storage/v;->ggO:I

    .line 109
    return-void
.end method

.method public final lT(I)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput p1, p0, Lcom/tencent/mm/storage/v;->ggP:I

    .line 125
    return-void
.end method

.method public final lU(I)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput p1, p0, Lcom/tencent/mm/storage/v;->ggQ:I

    .line 133
    return-void
.end method

.method public final mY(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/tencent/mm/storage/v;->ggR:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public final ul(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tencent/mm/storage/v;->ddM:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public final um(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/tencent/mm/storage/v;->ggS:Ljava/lang/String;

    .line 117
    return-void
.end method
