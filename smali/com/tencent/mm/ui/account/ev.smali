.class final Lcom/tencent/mm/ui/account/ev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

.field final synthetic gsc:Lcom/tencent/mm/modelfriend/ai;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/MobileVerifyUIOld;Lcom/tencent/mm/modelfriend/ai;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1171
    iput-object p1, p0, Lcom/tencent/mm/ui/account/ev;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    iput-object p2, p0, Lcom/tencent/mm/ui/account/ev;->gsc:Lcom/tencent/mm/modelfriend/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 1175
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/ev;->gsc:Lcom/tencent/mm/modelfriend/ai;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 1176
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x84

    iget-object v2, p0, Lcom/tencent/mm/ui/account/ev;->gsa:Lcom/tencent/mm/ui/account/MobileVerifyUIOld;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 1177
    return-void
.end method
