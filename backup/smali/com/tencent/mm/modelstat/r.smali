.class public Lcom/tencent/mm/modelstat/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/bb;


# static fields
.field private static bZd:Ljava/util/HashMap;


# instance fields
.field private cAb:Lcom/tencent/mm/modelstat/g;

.field private cAc:Lcom/tencent/mm/modelstat/j;

.field private cAd:Lcom/tencent/mm/modelstat/a;

.field private cpb:Lcom/tencent/mm/network/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 102
    sput-object v0, Lcom/tencent/mm/modelstat/r;->bZd:Ljava/util/HashMap;

    const-string v1, "NETSTAT_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/modelstat/u;

    invoke-direct {v2}, Lcom/tencent/mm/modelstat/u;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/tencent/mm/modelstat/g;

    invoke-direct {v0}, Lcom/tencent/mm/modelstat/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelstat/r;->cAb:Lcom/tencent/mm/modelstat/g;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/modelstat/r;->cAd:Lcom/tencent/mm/modelstat/a;

    .line 29
    new-instance v0, Lcom/tencent/mm/modelstat/s;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelstat/s;-><init>(Lcom/tencent/mm/modelstat/r;)V

    iput-object v0, p0, Lcom/tencent/mm/modelstat/r;->cpb:Lcom/tencent/mm/network/ag;

    return-void
.end method

.method public static De()Lcom/tencent/mm/modelstat/a;
    .locals 3

    .prologue
    .line 50
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 53
    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelstat/r;->Df()Lcom/tencent/mm/modelstat/r;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelstat/r;->cAd:Lcom/tencent/mm/modelstat/a;

    if-nez v0, :cond_1

    .line 54
    invoke-static {}, Lcom/tencent/mm/modelstat/r;->Df()Lcom/tencent/mm/modelstat/r;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelstat/a;

    sget-object v2, Lcom/tencent/mm/storage/h;->cfC:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelstat/a;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tencent/mm/modelstat/r;->cAd:Lcom/tencent/mm/modelstat/a;

    .line 56
    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelstat/r;->Df()Lcom/tencent/mm/modelstat/r;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelstat/r;->cAd:Lcom/tencent/mm/modelstat/a;

    return-object v0
.end method

.method private static Df()Lcom/tencent/mm/modelstat/r;
    .locals 3

    .prologue
    .line 61
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v0

    const-class v1, Lcom/tencent/mm/modelstat/r;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/dr;->dN(Ljava/lang/String;)Lcom/tencent/mm/model/bb;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/modelstat/r;

    .line 62
    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/tencent/mm/modelstat/r;

    invoke-direct {v0}, Lcom/tencent/mm/modelstat/r;-><init>()V

    .line 64
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/modelstat/r;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/model/dr;->a(Ljava/lang/String;Lcom/tencent/mm/model/bb;)Z

    .line 66
    :cond_0
    return-object v0
.end method

.method public static Dg()Lcom/tencent/mm/modelstat/j;
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 73
    :cond_0
    invoke-static {}, Lcom/tencent/mm/modelstat/r;->Df()Lcom/tencent/mm/modelstat/r;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelstat/r;->cAc:Lcom/tencent/mm/modelstat/j;

    if-nez v0, :cond_1

    .line 74
    invoke-static {}, Lcom/tencent/mm/modelstat/r;->Df()Lcom/tencent/mm/modelstat/r;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/modelstat/j;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/mm/modelstat/j;-><init>(Lcom/tencent/mm/ap/i;)V

    iput-object v1, v0, Lcom/tencent/mm/modelstat/r;->cAc:Lcom/tencent/mm/modelstat/j;

    .line 75
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/modelstat/r;->Df()Lcom/tencent/mm/modelstat/r;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/mm/modelstat/r;->cAc:Lcom/tencent/mm/modelstat/j;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/b;->a(Lcom/tencent/mm/ap/h;)V

    .line 77
    :cond_1
    invoke-static {}, Lcom/tencent/mm/modelstat/r;->Df()Lcom/tencent/mm/modelstat/r;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelstat/r;->cAc:Lcom/tencent/mm/modelstat/j;

    return-object v0
.end method

.method public static d(Lcom/tencent/mm/network/r;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    const-string v3, "MicroMsg.SubCoreStat"

    const-string v4, "dknetstat setNetworkMoniter  isnull:%b  ,  %s "

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    if-nez p0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {}, Lcom/tencent/mm/sdk/platformtools/cj;->azV()Lcom/tencent/mm/sdk/platformtools/cm;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v3, v4, v5}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    if-eqz p0, :cond_0

    .line 87
    invoke-static {}, Lcom/tencent/mm/modelstat/r;->Df()Lcom/tencent/mm/modelstat/r;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/modelstat/r;->cAb:Lcom/tencent/mm/modelstat/g;

    invoke-interface {p0, v0}, Lcom/tencent/mm/network/r;->a(Lcom/tencent/mm/network/a/c;)V

    .line 89
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 85
    goto :goto_0
.end method


# virtual methods
.method public final N(Z)V
    .locals 2
    .parameter

    .prologue
    .line 121
    const/16 v0, 0x270e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelstat/r;->cAb:Lcom/tencent/mm/modelstat/g;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    .line 123
    iget-object v0, p0, Lcom/tencent/mm/modelstat/r;->cpb:Lcom/tencent/mm/network/ag;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->a(Lcom/tencent/mm/network/ag;)V

    .line 125
    new-instance v0, Lcom/tencent/mm/modelstat/v;

    invoke-direct {v0, p0}, Lcom/tencent/mm/modelstat/v;-><init>(Lcom/tencent/mm/modelstat/r;)V

    invoke-static {v0}, Lcom/tencent/mm/model/ar;->a(Lcom/tencent/mm/model/aw;)V

    .line 133
    return-void
.end method

.method public final bJ(I)V
    .locals 0
    .parameter

    .prologue
    .line 117
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    return-void
.end method

.method public final qy()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tencent/mm/modelstat/r;->cpb:Lcom/tencent/mm/network/ag;

    invoke-static {v0}, Lcom/tencent/mm/model/be;->b(Lcom/tencent/mm/network/ag;)V

    .line 94
    const/16 v0, 0x270e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/modelstat/r;->cAb:Lcom/tencent/mm/modelstat/g;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    .line 95
    new-instance v0, Lcom/tencent/mm/modelstat/g;

    invoke-direct {v0}, Lcom/tencent/mm/modelstat/g;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/modelstat/r;->cAb:Lcom/tencent/mm/modelstat/g;

    .line 96
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/mm/model/ar;->a(Lcom/tencent/mm/model/aw;)V

    .line 97
    return-void
.end method

.method public final qz()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/tencent/mm/modelstat/r;->bZd:Ljava/util/HashMap;

    return-object v0
.end method
