.class final Lcom/tencent/mm/plugin/accountsync/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic cHW:Lcom/tencent/mm/plugin/accountsync/a/b;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/accountsync/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tencent/mm/plugin/accountsync/a/c;->cHW:Lcom/tencent/mm/plugin/accountsync/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 57
    const-string v0, "MicroMsg.DoInit"

    const-string v1, "do init canceled"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/accountsync/a/c;->cHW:Lcom/tencent/mm/plugin/accountsync/a/b;

    invoke-static {v1}, Lcom/tencent/mm/plugin/accountsync/a/b;->a(Lcom/tencent/mm/plugin/accountsync/a/b;)Lcom/tencent/mm/n/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 59
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    const/16 v1, 0x26

    iget-object v2, p0, Lcom/tencent/mm/plugin/accountsync/a/c;->cHW:Lcom/tencent/mm/plugin/accountsync/a/b;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/n/ac;->b(ILcom/tencent/mm/n/m;)V

    .line 60
    return-void
.end method
