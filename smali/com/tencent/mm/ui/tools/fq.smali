.class final Lcom/tencent/mm/ui/tools/fq;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private Ky:Landroid/net/Uri;

.field final synthetic hmo:Lcom/tencent/mm/ui/tools/ShareImgUI;

.field private hmp:Lcom/tencent/mm/ui/tools/fr;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/tools/ShareImgUI;Landroid/net/Uri;Lcom/tencent/mm/ui/tools/fr;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/fq;->hmo:Lcom/tencent/mm/ui/tools/ShareImgUI;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 458
    iput-object p2, p0, Lcom/tencent/mm/ui/tools/fq;->Ky:Landroid/net/Uri;

    .line 459
    iput-object p3, p0, Lcom/tencent/mm/ui/tools/fq;->hmp:Lcom/tencent/mm/ui/tools/fr;

    .line 460
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 464
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 465
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fq;->hmo:Lcom/tencent/mm/ui/tools/ShareImgUI;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/fq;->hmo:Lcom/tencent/mm/ui/tools/ShareImgUI;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/fq;->Ky:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/tencent/mm/ui/tools/ShareImgUI;->a(Lcom/tencent/mm/ui/tools/ShareImgUI;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/ui/tools/ShareImgUI;->filePath:Ljava/lang/String;

    .line 466
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fq;->hmp:Lcom/tencent/mm/ui/tools/fr;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/fq;->hmp:Lcom/tencent/mm/ui/tools/fr;

    invoke-interface {v0}, Lcom/tencent/mm/ui/tools/fr;->aNN()V

    .line 469
    :cond_0
    return-void
.end method
