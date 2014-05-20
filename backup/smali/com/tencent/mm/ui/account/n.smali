.class final Lcom/tencent/mm/ui/account/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic gpN:Lcom/tencent/mm/modelfriend/aj;

.field final synthetic gpO:Lcom/tencent/mm/ui/account/m;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/m;Lcom/tencent/mm/modelfriend/aj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/tencent/mm/ui/account/n;->gpO:Lcom/tencent/mm/ui/account/m;

    iput-object p2, p0, Lcom/tencent/mm/ui/account/n;->gpN:Lcom/tencent/mm/modelfriend/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 141
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/ui/account/n;->gpN:Lcom/tencent/mm/modelfriend/aj;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 142
    return-void
.end method
