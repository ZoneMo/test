.class final Lcom/tencent/mm/ui/account/lj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic grd:Lcom/tencent/mm/modelsimple/i;

.field final synthetic guB:Lcom/tencent/mm/ui/account/li;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/li;Lcom/tencent/mm/modelsimple/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/tencent/mm/ui/account/lj;->guB:Lcom/tencent/mm/ui/account/li;

    iput-object p2, p0, Lcom/tencent/mm/ui/account/lj;->grd:Lcom/tencent/mm/modelsimple/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 255
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/lj;->grd:Lcom/tencent/mm/modelsimple/i;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 256
    return-void
.end method
