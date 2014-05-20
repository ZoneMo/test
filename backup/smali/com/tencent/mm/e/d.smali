.class public Lcom/tencent/mm/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/bb;


# instance fields
.field private cfP:Lcom/tencent/mm/e/c;

.field private cfQ:Lcom/tencent/mm/e/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/e/c;

    invoke-direct {v0}, Lcom/tencent/mm/e/c;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/e/d;->cfP:Lcom/tencent/mm/e/c;

    .line 14
    new-instance v0, Lcom/tencent/mm/e/a;

    invoke-direct {v0}, Lcom/tencent/mm/e/a;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/e/d;->cfQ:Lcom/tencent/mm/e/a;

    return-void
.end method

.method public static qA()Lcom/tencent/mm/e/c;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 60
    :cond_0
    invoke-static {}, Lcom/tencent/mm/e/d;->qx()Lcom/tencent/mm/e/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/e/d;->cfP:Lcom/tencent/mm/e/c;

    return-object v0
.end method

.method public static qB()Lcom/tencent/mm/e/a;
    .locals 1

    .prologue
    .line 69
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sd()I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/tencent/mm/model/a;

    invoke-direct {v0}, Lcom/tencent/mm/model/a;-><init>()V

    throw v0

    .line 72
    :cond_0
    invoke-static {}, Lcom/tencent/mm/e/d;->qx()Lcom/tencent/mm/e/d;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/e/d;->cfQ:Lcom/tencent/mm/e/a;

    return-object v0
.end method

.method private static qx()Lcom/tencent/mm/e/d;
    .locals 3

    .prologue
    .line 17
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v0

    const-class v1, Lcom/tencent/mm/e/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/model/dr;->dN(Ljava/lang/String;)Lcom/tencent/mm/model/bb;

    move-result-object v0

    check-cast v0, Lcom/tencent/mm/e/d;

    .line 18
    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/tencent/mm/e/d;

    invoke-direct {v0}, Lcom/tencent/mm/e/d;-><init>()V

    .line 20
    invoke-static {}, Lcom/tencent/mm/model/be;->uh()Lcom/tencent/mm/model/dr;

    move-result-object v1

    const-class v2, Lcom/tencent/mm/e/d;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/tencent/mm/model/dr;->a(Ljava/lang/String;Lcom/tencent/mm/model/bb;)Z

    .line 22
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final N(Z)V
    .locals 1
    .parameter

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    iget-object v0, p0, Lcom/tencent/mm/e/d;->cfQ:Lcom/tencent/mm/e/a;

    invoke-virtual {v0}, Lcom/tencent/mm/e/a;->qj()Z

    .line 38
    :cond_0
    return-void
.end method

.method public final bJ(I)V
    .locals 0
    .parameter

    .prologue
    .line 31
    return-void
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tencent/mm/e/d;->cfP:Lcom/tencent/mm/e/c;

    invoke-virtual {v0}, Lcom/tencent/mm/e/c;->gW()V

    .line 43
    iget-object v0, p0, Lcom/tencent/mm/e/d;->cfQ:Lcom/tencent/mm/e/a;

    invoke-virtual {v0}, Lcom/tencent/mm/e/a;->init()V

    .line 44
    return-void
.end method

.method public final qy()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public final qz()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method
