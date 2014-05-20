.class final Lcom/tencent/mm/m/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cks:Lcom/tencent/mm/m/e;

.field final synthetic ckt:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/mm/m/e;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/tencent/mm/m/g;->cks:Lcom/tencent/mm/m/e;

    iput-object p2, p0, Lcom/tencent/mm/m/g;->ckt:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 154
    iget-object v0, p0, Lcom/tencent/mm/m/g;->ckt:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/tencent/mm/m/g;->ckt:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/mm/m/g;->cks:Lcom/tencent/mm/m/e;

    invoke-static {v1}, Lcom/tencent/mm/m/e;->a(Lcom/tencent/mm/m/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/tencent/mm/m/g;->cks:Lcom/tencent/mm/m/e;

    invoke-static {}, Lcom/tencent/mm/m/e;->vK()Lcom/tencent/mm/m/y;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/tencent/mm/m/g;->ckt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/m/y;->eq(Ljava/lang/String;)Lcom/tencent/mm/m/x;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/m/x;->getUsername()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/m/g;->ckt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/tencent/mm/m/x;->vZ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/tencent/mm/m/x;->vW()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    const-string v0, "MicroMsg.AvatarService"

    const-string v1, "dkhurl user has no url [%s]"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/mm/m/g;->ckt:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/sdk/platformtools/aa;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/tencent/mm/m/g;->cks:Lcom/tencent/mm/m/e;

    invoke-static {}, Lcom/tencent/mm/m/e;->vL()Lcom/tencent/mm/m/m;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/tencent/mm/m/g;->ckt:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/tencent/mm/m/m;->i(Ljava/lang/String;Z)Z

    .line 180
    iget-object v1, p0, Lcom/tencent/mm/m/g;->ckt:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/tencent/mm/m/m;->i(Ljava/lang/String;Z)Z

    .line 181
    iget-object v0, p0, Lcom/tencent/mm/m/g;->cks:Lcom/tencent/mm/m/e;

    iget-object v1, p0, Lcom/tencent/mm/m/g;->ckt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/m/e;->dY(Ljava/lang/String;)V

    goto :goto_0
.end method
