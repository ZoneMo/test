.class final Lcom/tencent/mm/ui/tools/fj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hmi:Lcom/tencent/mm/ui/base/ch;

.field final synthetic hmj:Lcom/tencent/mm/ui/tools/fi;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/fi;Lcom/tencent/mm/ui/base/ch;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/fj;->hmj:Lcom/tencent/mm/ui/tools/fi;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/fj;->hmi:Lcom/tencent/mm/ui/base/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 88
    invoke-static {}, Lcom/tencent/mm/model/v;->th()Ljava/lang/String;

    move-result-object v2

    .line 89
    const/4 v7, 0x0

    .line 90
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fj;->hmj:Lcom/tencent/mm/ui/tools/fi;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/fi;->hmg:Lcom/tencent/mm/ui/tools/fl;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/fl;->aNK()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 91
    const-string v0, "MicroMsg.ShareImageUI"

    const-string v1, "toSend, %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    invoke-static {v0, v1, v4}, Lcom/tencent/mm/sdk/platformtools/aa;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    new-instance v0, Lcom/tencent/mm/w/y;

    const/4 v1, 0x5

    iget-object v4, p0, Lcom/tencent/mm/ui/tools/fj;->hmj:Lcom/tencent/mm/ui/tools/fi;

    iget-object v4, v4, Lcom/tencent/mm/ui/tools/fi;->hmh:Lcom/tencent/mm/ui/tools/ShareImageUI;

    invoke-static {v4}, Lcom/tencent/mm/ui/tools/ShareImageUI;->a(Lcom/tencent/mm/ui/tools/ShareImageUI;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-direct/range {v0 .. v7}, Lcom/tencent/mm/w/y;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 95
    invoke-virtual {v0}, Lcom/tencent/mm/w/y;->AW()Lcom/tencent/mm/storage/ak;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/tencent/mm/w/y;->AW()Lcom/tencent/mm/storage/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->ot()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fj;->hmi:Lcom/tencent/mm/ui/base/ch;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/base/ch;->dismiss()V

    .line 100
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fj;->hmj:Lcom/tencent/mm/ui/tools/fi;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/fi;->hmh:Lcom/tencent/mm/ui/tools/ShareImageUI;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/ui/tools/ShareImageUI;->setResult(I)V

    .line 101
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fj;->hmj:Lcom/tencent/mm/ui/tools/fi;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/fi;->hmh:Lcom/tencent/mm/ui/tools/ShareImageUI;

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/ShareImageUI;->finish()V

    .line 102
    return-void
.end method
