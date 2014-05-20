.class final Lcom/tencent/mm/pluginsdk/model/app/bh;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic fid:Lcom/tencent/mm/pluginsdk/model/app/ba;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/model/app/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/model/app/bh;->fid:Lcom/tencent/mm/pluginsdk/model/app/ba;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 2
    .parameter

    .prologue
    .line 322
    check-cast p1, Lcom/tencent/mm/c/a/co;

    .line 323
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqj()Lcom/tencent/mm/pluginsdk/model/app/t;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mm/c/a/co;->bNS:Lcom/tencent/mm/c/a/cp;

    iget-object v1, v1, Lcom/tencent/mm/c/a/cp;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/pluginsdk/model/app/t;->eQ(Ljava/lang/String;)V

    .line 324
    const/4 v0, 0x0

    return v0
.end method
