.class public Lcom/tencent/mm/ai/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/bb;


# static fields
.field private static bZd:Ljava/util/HashMap;


# instance fields
.field private cAM:Lcom/tencent/mm/ai/w;

.field private cAN:Lcom/tencent/mm/ai/r;

.field private cAO:Lcom/tencent/mm/ai/z;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    sput-object v0, Lcom/tencent/mm/ai/m;->bZd:Ljava/util/HashMap;

    const-string v1, "VIDEOINFO_TABLE"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/tencent/mm/ai/n;

    invoke-direct {v2}, Lcom/tencent/mm/ai/n;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/tencent/mm/ai/w;

    invoke-direct {v0}, Lcom/tencent/mm/ai/w;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ai/m;->cAM:Lcom/tencent/mm/ai/w;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/ai/m;->cAO:Lcom/tencent/mm/ai/z;

    return-void
.end method

.method private static DD()Lcom/tencent/mm/ai/m;
    .locals 3

    .prologue
    .line 19
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v0

    const-class v1, Lcom/tencent/mm/ai/m;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/dr;->dN(Ljava/lang/String;)Lcom/tencent/mm/model/bb;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/ai/m;

    .line 20
    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/tencent/mm/ai/m;

    invoke-direct {v0}, Lcom/tencent/mm/ai/m;-><init>()V

    .line 22
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/ai/m;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/model/dr;->a(Ljava/lang/String;Lcom/tencent/mm/model/bb;)Z

    .line 24
    :cond_0
    return-object v0
.end method

.method public static DE()Lcom/tencent/mm/ai/r;
    .locals 4

    .prologue
    .line 28
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 31
    :cond_0
    invoke-static {}, Lcom/tencent/mm/ai/m;->DD()Lcom/tencent/mm/ai/m;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ai/m;->cAN:Lcom/tencent/mm/ai/r;

    if-nez v0, :cond_1

    .line 32
    invoke-static {}, Lcom/tencent/mm/ai/m;->DD()Lcom/tencent/mm/ai/m;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ai/r;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sp()Lcom/tencent/mm/ap/i;

    move-result-object v2

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/mm/model/b;->sM()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/mm/ai/r;-><init>(Lcom/tencent/mm/ap/i;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tencent/mm/ai/m;->cAN:Lcom/tencent/mm/ai/r;

    .line 34
    :cond_1
    invoke-static {}, Lcom/tencent/mm/ai/m;->DD()Lcom/tencent/mm/ai/m;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ai/m;->cAN:Lcom/tencent/mm/ai/r;

    return-object v0
.end method

.method public static DF()Lcom/tencent/mm/ai/z;
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 41
    :cond_0
    invoke-static {}, Lcom/tencent/mm/ai/m;->DD()Lcom/tencent/mm/ai/m;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ai/m;->cAO:Lcom/tencent/mm/ai/z;

    if-nez v0, :cond_1

    .line 42
    invoke-static {}, Lcom/tencent/mm/ai/m;->DD()Lcom/tencent/mm/ai/m;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/ai/z;

    invoke-direct {v1}, Lcom/tencent/mm/ai/z;-><init>()V

    iput-object v1, v0, Lcom/tencent/mm/ai/m;->cAO:Lcom/tencent/mm/ai/z;

    .line 44
    :cond_1
    invoke-static {}, Lcom/tencent/mm/ai/m;->DD()Lcom/tencent/mm/ai/m;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ai/m;->cAO:Lcom/tencent/mm/ai/z;

    return-object v0
.end method


# virtual methods
.method public final N(Z)V
    .locals 2
    .parameter

    .prologue
    .line 78
    const/16 v0, 0x2b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ai/m;->cAM:Lcom/tencent/mm/ai/w;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    .line 79
    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ai/m;->cAM:Lcom/tencent/mm/ai/w;

    invoke-static {v0, v1}, Lcom/tencent/mm/n/l;->a(Ljava/lang/Object;Lcom/tencent/mm/n/j;)V

    .line 80
    return-void
.end method

.method public final bJ(I)V
    .locals 0
    .parameter

    .prologue
    .line 74
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    return-void
.end method

.method public final qy()V
    .locals 2

    .prologue
    .line 49
    invoke-static {}, Lcom/tencent/mm/ai/m;->DD()Lcom/tencent/mm/ai/m;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ai/m;->cAO:Lcom/tencent/mm/ai/z;

    if-eqz v0, :cond_0

    .line 50
    invoke-static {}, Lcom/tencent/mm/ai/m;->DD()Lcom/tencent/mm/ai/m;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/ai/m;->cAO:Lcom/tencent/mm/ai/z;

    invoke-virtual {v0}, Lcom/tencent/mm/ai/z;->stop()V

    .line 52
    :cond_0
    const/16 v0, 0x2b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ai/m;->cAM:Lcom/tencent/mm/ai/w;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    .line 53
    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ai/m;->cAM:Lcom/tencent/mm/ai/w;

    invoke-static {v0}, Lcom/tencent/mm/n/l;->S(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public final qz()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/tencent/mm/ai/m;->bZd:Ljava/util/HashMap;

    return-object v0
.end method
