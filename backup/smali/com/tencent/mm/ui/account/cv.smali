.class final Lcom/tencent/mm/ui/account/cv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic grm:Lcom/tencent/mm/modelfriend/ag;

.field final synthetic grn:Lcom/tencent/mm/ui/account/cu;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/cu;Lcom/tencent/mm/modelfriend/ag;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/tencent/mm/ui/account/cv;->grn:Lcom/tencent/mm/ui/account/cu;

    iput-object p2, p0, Lcom/tencent/mm/ui/account/cv;->grm:Lcom/tencent/mm/modelfriend/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 204
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/cv;->grm:Lcom/tencent/mm/modelfriend/ag;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 205
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x17c

    iget-object v2, p0, Lcom/tencent/mm/ui/account/cv;->grn:Lcom/tencent/mm/ui/account/cu;

    iget-object v2, v2, Lcom/tencent/mm/ui/account/cu;->grl:Lcom/tencent/mm/ui/account/ct;

    iget-object v2, v2, Lcom/tencent/mm/ui/account/ct;->grj:Lcom/tencent/mm/ui/account/LoginIndepPass;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 206
    return-void
.end method
