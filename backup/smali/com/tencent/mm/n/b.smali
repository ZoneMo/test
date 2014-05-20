.class public final Lcom/tencent/mm/n/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private clD:I

.field private clE:Lcom/tencent/mm/am/a;

.field private clF:Lcom/tencent/mm/am/a;

.field private clG:I

.field private clH:I

.field private clI:Z

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x8000

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/tencent/mm/n/b;->clG:I

    iput v0, p0, Lcom/tencent/mm/n/b;->clH:I

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/n/b;->clI:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/am/a;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tencent/mm/n/b;->clE:Lcom/tencent/mm/am/a;

    .line 32
    return-void
.end method

.method public final b(Lcom/tencent/mm/am/a;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tencent/mm/n/b;->clF:Lcom/tencent/mm/am/a;

    .line 36
    return-void
.end method

.method public final cN(I)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/tencent/mm/n/b;->clD:I

    .line 44
    return-void
.end method

.method public final cO(I)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/tencent/mm/n/b;->clG:I

    .line 48
    return-void
.end method

.method public final cP(I)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/tencent/mm/n/b;->clH:I

    .line 52
    return-void
.end method

.method public final es(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tencent/mm/n/b;->uri:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public final ww()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/n/b;->clI:Z

    .line 59
    return-void
.end method

.method public final wx()Lcom/tencent/mm/n/a;
    .locals 9

    .prologue
    const/high16 v1, -0x8000

    .line 62
    iget-object v0, p0, Lcom/tencent/mm/n/b;->clE:Lcom/tencent/mm/am/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/n/b;->clF:Lcom/tencent/mm/am/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/mm/n/b;->uri:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/n/b;->clD:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/tencent/mm/n/b;->clG:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/mm/n/b;->clH:I

    if-ne v0, v1, :cond_1

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 65
    :cond_1
    new-instance v0, Lcom/tencent/mm/n/a;

    iget-object v1, p0, Lcom/tencent/mm/n/b;->clE:Lcom/tencent/mm/am/a;

    iget-object v2, p0, Lcom/tencent/mm/n/b;->clF:Lcom/tencent/mm/am/a;

    iget-object v3, p0, Lcom/tencent/mm/n/b;->uri:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/mm/n/b;->clD:I

    iget v5, p0, Lcom/tencent/mm/n/b;->clG:I

    iget v6, p0, Lcom/tencent/mm/n/b;->clH:I

    iget-boolean v7, p0, Lcom/tencent/mm/n/b;->clI:Z

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/tencent/mm/n/a;-><init>(Lcom/tencent/mm/am/a;Lcom/tencent/mm/am/a;Ljava/lang/String;IIIZB)V

    return-object v0
.end method
