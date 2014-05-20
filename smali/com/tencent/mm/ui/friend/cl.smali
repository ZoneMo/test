.class final Lcom/tencent/mm/ui/friend/cl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic hbZ:Lcom/tencent/mm/modelsimple/am;

.field final synthetic hca:Lcom/tencent/mm/ui/friend/ck;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/friend/ck;Lcom/tencent/mm/modelsimple/am;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tencent/mm/ui/friend/cl;->hca:Lcom/tencent/mm/ui/friend/ck;

    iput-object p2, p0, Lcom/tencent/mm/ui/friend/cl;->hbZ:Lcom/tencent/mm/modelsimple/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/friend/cl;->hbZ:Lcom/tencent/mm/modelsimple/am;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 44
    iget-object v0, p0, Lcom/tencent/mm/ui/friend/cl;->hca:Lcom/tencent/mm/ui/friend/ck;

    invoke-static {v0}, Lcom/tencent/mm/ui/friend/ck;->a(Lcom/tencent/mm/ui/friend/ck;)Lcom/tencent/mm/ui/friend/cn;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/friend/cn;->ea(Z)V

    .line 45
    return-void
.end method
