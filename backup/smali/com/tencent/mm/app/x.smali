.class final Lcom/tencent/mm/app/x;
.super Lcom/tencent/mm/sdk/b/g;
.source "SourceFile"


# instance fields
.field final synthetic bLu:Lcom/tencent/mm/app/WorkerProfile;


# direct methods
.method constructor <init>(Lcom/tencent/mm/app/WorkerProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/tencent/mm/app/x;->bLu:Lcom/tencent/mm/app/WorkerProfile;

    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/sdk/b/e;)Z
    .locals 3
    .parameter

    .prologue
    .line 460
    check-cast p1, Lcom/tencent/mm/c/a/hf;

    .line 461
    invoke-static {}, Lcom/tencent/mm/ar/a;->aDD()Lcom/tencent/mm/ar/a;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/mm/c/a/hf;->bRc:Lcom/tencent/mm/c/a/hg;

    iget-object v1, v1, Lcom/tencent/mm/c/a/hg;->className:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/mm/c/a/hf;->bRc:Lcom/tencent/mm/c/a/hg;

    iget v2, v2, Lcom/tencent/mm/c/a/hg;->bRd:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/mm/ar/a;->ao(Ljava/lang/String;I)V

    .line 462
    const/4 v0, 0x0

    return v0
.end method
