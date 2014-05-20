.class public final Lcom/tencent/mm/pluginsdk/model/j;
.super Lcom/tencent/mm/n/x;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/network/ab;


# instance fields
.field private bNk:I

.field private cjh:Lcom/tencent/mm/n/m;

.field private final cke:Lcom/tencent/mm/n/a;

.field private csN:Ljava/lang/String;

.field private fgT:Ljava/util/List;

.field private fgU:Ljava/lang/String;

.field private fgV:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 71
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->fgT:Ljava/util/List;

    .line 28
    iput v3, p0, Lcom/tencent/mm/pluginsdk/model/j;->bNk:I

    .line 31
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->fgV:Ljava/util/List;

    .line 73
    const-string v1, "This NetSceneVerifyUser init NEVER use opcode == MM_VERIFYUSER_VERIFYOK"

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    move v0, v2

    :goto_0
    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 74
    iput p1, p0, Lcom/tencent/mm/pluginsdk/model/j;->bNk:I

    .line 75
    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/model/j;->fgT:Ljava/util/List;

    .line 77
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 78
    new-instance v1, Lcom/tencent/mm/protocal/a/ze;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ze;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 79
    new-instance v1, Lcom/tencent/mm/protocal/a/zf;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/zf;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 80
    const-string v1, "/cgi-bin/micromsg-bin/verifyuser"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 81
    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 82
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 83
    const v1, 0x3b9aca2c

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 84
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->cke:Lcom/tencent/mm/n/a;

    .line 86
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ze;

    .line 87
    iput p1, v0, Lcom/tencent/mm/protocal/a/ze;->fBl:I

    .line 88
    iput-object p4, v0, Lcom/tencent/mm/protocal/a/ze;->fMl:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/tencent/mm/pluginsdk/model/j;->fgU:Ljava/lang/String;

    .line 91
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move v4, v3

    .line 92
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_2

    .line 93
    new-instance v6, Lcom/tencent/mm/protocal/a/zd;

    invoke-direct {v6}, Lcom/tencent/mm/protocal/a/zd;-><init>()V

    .line 94
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v6, Lcom/tencent/mm/protocal/a/zd;->fNk:Ljava/lang/String;

    .line 95
    if-nez p5, :cond_1

    const-string v1, ""

    :goto_2
    iput-object v1, v6, Lcom/tencent/mm/protocal/a/zd;->fZt:Ljava/lang/String;

    .line 96
    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_0
    move v0, v3

    .line 73
    goto :goto_0

    :cond_1
    move-object v1, p5

    .line 95
    goto :goto_2

    .line 98
    :cond_2
    iput-object v5, v0, Lcom/tencent/mm/protocal/a/ze;->fZv:Ljava/util/LinkedList;

    .line 99
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/ze;->fZu:I

    .line 100
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 101
    invoke-virtual {v1, p3}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 102
    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ze;->fZx:Ljava/util/LinkedList;

    .line 103
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/ze;->fZw:I

    .line 104
    const-string v1, "MicroMsg.NetSceneVerifyUser"

    const-string v4, "dkverify scene:%d user:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/tencent/mm/protocal/a/ze;->fZv:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ze;->fZx:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v1, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x3

    .line 34
    invoke-direct {p0}, Lcom/tencent/mm/n/x;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->fgT:Ljava/util/List;

    .line 28
    iput v5, p0, Lcom/tencent/mm/pluginsdk/model/j;->bNk:I

    .line 31
    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->fgV:Ljava/util/List;

    .line 36
    const-string v0, "This NetSceneVerifyUser init MUST use opcode == MM_VERIFYUSER_VERIFYOK"

    invoke-static {v0, v6}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 38
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->fgT:Ljava/util/List;

    .line 39
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->fgT:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    iput v3, p0, Lcom/tencent/mm/pluginsdk/model/j;->bNk:I

    .line 42
    new-instance v0, Lcom/tencent/mm/n/b;

    invoke-direct {v0}, Lcom/tencent/mm/n/b;-><init>()V

    .line 43
    new-instance v1, Lcom/tencent/mm/protocal/a/ze;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/ze;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->a(Lcom/tencent/mm/am/a;)V

    .line 44
    new-instance v1, Lcom/tencent/mm/protocal/a/zf;

    invoke-direct {v1}, Lcom/tencent/mm/protocal/a/zf;-><init>()V

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->b(Lcom/tencent/mm/am/a;)V

    .line 45
    const-string v1, "/cgi-bin/micromsg-bin/verifyuser"

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->es(Ljava/lang/String;)V

    .line 46
    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cN(I)V

    .line 47
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cO(I)V

    .line 48
    const v1, 0x3b9aca2c

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/b;->cP(I)V

    .line 49
    invoke-virtual {v0}, Lcom/tencent/mm/n/b;->wx()Lcom/tencent/mm/n/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->cke:Lcom/tencent/mm/n/a;

    .line 51
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ze;

    .line 52
    iput v3, v0, Lcom/tencent/mm/protocal/a/ze;->fBl:I

    .line 53
    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ze;->fMl:Ljava/lang/String;

    .line 55
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 56
    new-instance v2, Lcom/tencent/mm/protocal/a/zd;

    invoke-direct {v2}, Lcom/tencent/mm/protocal/a/zd;-><init>()V

    .line 57
    iput-object p1, v2, Lcom/tencent/mm/protocal/a/zd;->fNk:Ljava/lang/String;

    .line 58
    iput-object p2, v2, Lcom/tencent/mm/protocal/a/zd;->fZt:Ljava/lang/String;

    .line 59
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 60
    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ze;->fZv:Ljava/util/LinkedList;

    .line 61
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/ze;->fZu:I

    .line 63
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 64
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 65
    iput-object v1, v0, Lcom/tencent/mm/protocal/a/ze;->fZx:Ljava/util/LinkedList;

    .line 66
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iput v1, v0, Lcom/tencent/mm/protocal/a/ze;->fZw:I

    .line 67
    const-string v1, "MicroMsg.NetSceneVerifyUser"

    const-string v2, "dkverify scene:%d user:%d ticket:%s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/tencent/mm/protocal/a/ze;->fZv:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ze;->fZx:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    const/4 v0, 0x2

    aput-object p2, v3, v0

    invoke-static {v1, v2, v3}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-void
.end method


# virtual methods
.method public final Ay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->csN:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/n/m;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/model/j;->cjh:Lcom/tencent/mm/n/m;

    .line 118
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {p0, p1, v0, p0}, Lcom/tencent/mm/pluginsdk/model/j;->a(Lcom/tencent/mm/network/r;Lcom/tencent/mm/network/aj;Lcom/tencent/mm/network/ab;)I

    move-result v0

    return v0
.end method

.method public final a(IIILjava/lang/String;Lcom/tencent/mm/network/aj;[B)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->cjh:Lcom/tencent/mm/n/m;

    invoke-interface {v0, p2, p3, p4, p0}, Lcom/tencent/mm/n/m;->a(IILjava/lang/String;Lcom/tencent/mm/n/x;)V

    .line 167
    return-void
.end method

.method public final apG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->cke:Lcom/tencent/mm/n/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wt()Lcom/tencent/mm/n/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->ws()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/zf;

    .line 110
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/zf;->eBo:Ljava/lang/String;

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final apH()Ljava/util/List;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->fgT:Ljava/util/List;

    return-object v0
.end method

.method public final apI()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->bNk:I

    return v0
.end method

.method public final apJ()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->fgU:Ljava/lang/String;

    return-object v0
.end method

.method public final apK()Ljava/util/List;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->fgV:Ljava/util/List;

    return-object v0
.end method

.method public final apL()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->cke:Lcom/tencent/mm/n/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wJ()Lcom/tencent/mm/protocal/p;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/model/j;->cke:Lcom/tencent/mm/n/a;

    invoke-virtual {v0}, Lcom/tencent/mm/n/a;->wr()Lcom/tencent/mm/am/a;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/protocal/a/ze;

    .line 152
    iget-object v0, v0, Lcom/tencent/mm/protocal/a/ze;->fZx:Ljava/util/LinkedList;

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 159
    const/16 v0, 0x1e

    return v0
.end method
