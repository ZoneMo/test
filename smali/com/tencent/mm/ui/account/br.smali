.class final Lcom/tencent/mm/ui/account/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/model/cd;


# instance fields
.field final synthetic grc:Lcom/tencent/mm/ui/account/LoginHistoryUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/account/LoginHistoryUI;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/tencent/mm/ui/account/br;->grc:Lcom/tencent/mm/ui/account/LoginHistoryUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/network/r;)V
    .locals 3
    .parameter

    .prologue
    .line 561
    if-nez p1, :cond_0

    .line 565
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-interface {p1}, Lcom/tencent/mm/network/r;->wZ()Lcom/tencent/mm/network/n;

    move-result-object v0

    const-string v1, ""

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sd()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/tencent/mm/network/n;->q(Ljava/lang/String;I)V

    goto :goto_0
.end method
