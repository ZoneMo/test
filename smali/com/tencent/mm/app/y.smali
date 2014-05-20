.class final Lcom/tencent/mm/app/y;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic bLu:Lcom/tencent/mm/app/WorkerProfile;


# direct methods
.method constructor <init>(Lcom/tencent/mm/app/WorkerProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/tencent/mm/app/y;->bLu:Lcom/tencent/mm/app/WorkerProfile;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 5
    .parameter

    .prologue
    .line 470
    check-cast p1, Lcom/tencent/mm/c/a/fx;

    .line 471
    new-instance v0, Lcom/tencent/mm/z/f;

    iget-object v1, p1, Lcom/tencent/mm/c/a/fx;->bQv:Lcom/tencent/mm/c/a/fy;

    iget-object v1, v1, Lcom/tencent/mm/c/a/fy;->bQw:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/mm/c/a/fx;->bQv:Lcom/tencent/mm/c/a/fy;

    iget-object v2, v2, Lcom/tencent/mm/c/a/fy;->content:Ljava/lang/String;

    iget-object v3, p1, Lcom/tencent/mm/c/a/fx;->bQv:Lcom/tencent/mm/c/a/fy;

    iget v3, v3, Lcom/tencent/mm/c/a/fy;->type:I

    iget-object v4, p1, Lcom/tencent/mm/c/a/fx;->bQv:Lcom/tencent/mm/c/a/fy;

    iget v4, v4, Lcom/tencent/mm/c/a/fy;->flags:I

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/z/f;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 472
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/mm/n/ac;->d(Lcom/tencent/mm/n/x;)Z

    .line 473
    const/4 v0, 0x0

    return v0
.end method
