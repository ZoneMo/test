.class final Lcom/tencent/mm/ui/friend/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/ui/friend/cn;


# instance fields
.field final synthetic dmE:I

.field final synthetic hbw:Lcom/tencent/mm/ui/friend/be;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/friend/be;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/bf;->hbw:Lcom/tencent/mm/ui/friend/be;

    iput p2, p0, Lcom/tencent/mm/ui/friend/bf;->dmE:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ea(Z)V
    .locals 2
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/bf;->hbw:Lcom/tencent/mm/ui/friend/be;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/be;->a(Lcom/tencent/mm/ui/friend/be;)Lcom/tencent/mm/ui/friend/bg;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/ui/friend/bf;->dmE:I

    invoke-interface {v0, p1, v1}, Lcom/tencent/mm/ui/friend/bg;->f(ZI)V

    .line 31
    return-void
.end method
