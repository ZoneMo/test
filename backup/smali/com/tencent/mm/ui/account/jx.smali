.class final Lcom/tencent/mm/ui/account/jx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic guf:Lcom/tencent/mm/modelfriend/an;

.field final synthetic gug:Lcom/tencent/mm/ui/account/jw;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/jw;Lcom/tencent/mm/modelfriend/an;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 897
    iput-object p1, p0, Lcom/tencent/mm/ui/account/jx;->gug:Lcom/tencent/mm/ui/account/jw;

    iput-object p2, p0, Lcom/tencent/mm/ui/account/jx;->guf:Lcom/tencent/mm/modelfriend/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 901
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/jx;->guf:Lcom/tencent/mm/modelfriend/an;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 902
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x1ad

    iget-object v2, p0, Lcom/tencent/mm/ui/account/jx;->gug:Lcom/tencent/mm/ui/account/jw;

    iget-object v2, v2, Lcom/tencent/mm/ui/account/jw;->gtZ:Lcom/tencent/mm/ui/account/RegSetInfoUI;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 903
    return-void
.end method
