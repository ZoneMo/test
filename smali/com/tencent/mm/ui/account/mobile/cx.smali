.class final Lcom/tencent/mm/ui/account/mobile/cx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic gua:Lcom/tencent/mm/modelsimple/ad;

.field final synthetic gwK:Lcom/tencent/mm/ui/account/mobile/cw;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/mobile/cw;Lcom/tencent/mm/modelsimple/ad;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/tencent/mm/ui/account/mobile/cx;->gwK:Lcom/tencent/mm/ui/account/mobile/cw;

    iput-object p2, p0, Lcom/tencent/mm/ui/account/mobile/cx;->gua:Lcom/tencent/mm/modelsimple/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 470
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/mobile/cx;->gua:Lcom/tencent/mm/modelsimple/ad;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 471
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x7e

    iget-object v2, p0, Lcom/tencent/mm/ui/account/mobile/cx;->gwK:Lcom/tencent/mm/ui/account/mobile/cw;

    iget-object v2, v2, Lcom/tencent/mm/ui/account/mobile/cw;->gwJ:Lcom/tencent/mm/ui/account/mobile/cn;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 472
    return-void
.end method
