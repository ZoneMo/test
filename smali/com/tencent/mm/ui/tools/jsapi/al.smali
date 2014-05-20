.class final Lcom/tencent/mm/ui/tools/jsapi/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/au;


# instance fields
.field final synthetic hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

.field final synthetic hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 886
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/al;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/jsapi/al;->hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 890
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/al;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 891
    const-string v0, "MicroMsg.MsgHandler"

    const-string v1, "getNow callback, msghandler has already been detached!"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/al;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/al;->hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "add_contact:fail"

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    .line 911
    :goto_0
    return-void

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/al;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->d(Lcom/tencent/mm/ui/tools/jsapi/p;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/al;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->d(Lcom/tencent/mm/ui/tools/jsapi/p;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 897
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/al;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/al;->hpy:Lcom/tencent/mm/ui/tools/jsapi/ao;

    const-string v2, "add_contact:fail"

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/ui/tools/jsapi/ao;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 901
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/al;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->e(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 902
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/al;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->e(Lcom/tencent/mm/ui/tools/jsapi/p;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 905
    :cond_3
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/al;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/storage/i;)Lcom/tencent/mm/storage/i;

    .line 906
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/al;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->f(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/al;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/jsapi/p;->f(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rj()I

    move-result v0

    if-nez v0, :cond_5

    .line 907
    :cond_4
    const-string v0, "MicroMsg.MsgHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doAddContact, no contact with username = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", try get by alias"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/al;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/mm/storage/k;->tL(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->a(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/storage/i;)Lcom/tencent/mm/storage/i;

    .line 910
    :cond_5
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/al;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/al;->hpx:Lcom/tencent/mm/ui/tools/jsapi/p;

    invoke-static {v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->f(Lcom/tencent/mm/ui/tools/jsapi/p;)Lcom/tencent/mm/storage/i;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/p;->b(Lcom/tencent/mm/ui/tools/jsapi/p;Lcom/tencent/mm/storage/i;)V

    goto/16 :goto_0
.end method
