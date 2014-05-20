.class final Lcom/tencent/mm/plugin/wallet/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic eVV:Lcom/tencent/mm/plugin/wallet/c;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/wallet/c;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/tencent/mm/plugin/wallet/e;->eVV:Lcom/tencent/mm/plugin/wallet/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/e;->eVV:Lcom/tencent/mm/plugin/wallet/c;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/c;->a(Lcom/tencent/mm/plugin/wallet/c;)Lcom/tencent/mm/c/a/cl;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/c/a/cl;->gbX:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/e;->eVV:Lcom/tencent/mm/plugin/wallet/c;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/c;->a(Lcom/tencent/mm/plugin/wallet/c;)Lcom/tencent/mm/c/a/cl;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/c/a/cl;->bNP:Lcom/tencent/mm/c/a/cn;

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/c/a/cn;->ret:I

    .line 213
    iget-object v0, p0, Lcom/tencent/mm/plugin/wallet/e;->eVV:Lcom/tencent/mm/plugin/wallet/c;

    invoke-static {v0}, Lcom/tencent/mm/plugin/wallet/c;->a(Lcom/tencent/mm/plugin/wallet/c;)Lcom/tencent/mm/c/a/cl;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/mm/c/a/cl;->gbX:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 215
    :cond_0
    return-void
.end method
