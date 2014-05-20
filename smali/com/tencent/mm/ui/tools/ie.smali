.class final Lcom/tencent/mm/ui/tools/ie;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bLN:I

.field private bQI:Ljava/lang/String;

.field private gQO:I

.field private gQP:I

.field private hnK:Ljava/lang/String;

.field private hnL:J

.field private hnM:J

.field final synthetic hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3694
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/ie;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3695
    iput-object p2, p0, Lcom/tencent/mm/ui/tools/ie;->username:Ljava/lang/String;

    .line 3696
    iput-object p3, p0, Lcom/tencent/mm/ui/tools/ie;->bQI:Ljava/lang/String;

    .line 3697
    iput-object p4, p0, Lcom/tencent/mm/ui/tools/ie;->hnK:Ljava/lang/String;

    .line 3698
    iput p5, p0, Lcom/tencent/mm/ui/tools/ie;->gQO:I

    .line 3699
    iput p6, p0, Lcom/tencent/mm/ui/tools/ie;->gQP:I

    .line 3701
    invoke-static {p1, p2}, Lcom/tencent/mm/ui/tools/WebViewUI;->h(Lcom/tencent/mm/ui/tools/WebViewUI;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/mm/ui/tools/ie;->bLN:I

    .line 3702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mm/ui/tools/ie;->hnL:J

    .line 3703
    return-void
.end method


# virtual methods
.method public final oS()V
    .locals 5

    .prologue
    .line 3706
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/mm/ui/tools/ie;->hnL:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/mm/ui/tools/ie;->hnM:J

    .line 3710
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/ie;->hnv:Lcom/tencent/mm/ui/tools/WebViewUI;

    iget-object v0, v0, Lcom/tencent/mm/ui/tools/WebViewUI;->cOg:Lcom/tencent/mm/plugin/webview/stub/al;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/ie;->username:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/tencent/mm/ui/tools/ie;->gQO:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/tencent/mm/ui/tools/ie;->gQP:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/tencent/mm/ui/tools/ie;->bLN:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/tencent/mm/ui/tools/ie;->hnL:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/tencent/mm/ui/tools/ie;->hnM:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/ie;->bQI:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/tencent/mm/ui/tools/ie;->hnK:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/mm/ui/tools/en;->a(Lcom/tencent/mm/plugin/webview/stub/al;[Ljava/lang/Object;)V

    .line 3711
    return-void
.end method
