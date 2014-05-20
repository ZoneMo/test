.class final Lcom/tencent/mm/ui/chatting/lv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dKv:I

.field private ehn:I

.field final synthetic gRv:Lcom/tencent/mm/ui/chatting/lm;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/chatting/lm;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/tencent/mm/ui/chatting/lv;->gRv:Lcom/tencent/mm/ui/chatting/lm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1379
    iput p2, p0, Lcom/tencent/mm/ui/chatting/lv;->ehn:I

    .line 1380
    iput p3, p0, Lcom/tencent/mm/ui/chatting/lv;->dKv:I

    .line 1381
    return-void
.end method

.method static synthetic a(Lcom/tencent/mm/ui/chatting/lv;Lcom/tencent/mm/ui/chatting/lv;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1377
    iget v0, p0, Lcom/tencent/mm/ui/chatting/lv;->dKv:I

    iget v1, p1, Lcom/tencent/mm/ui/chatting/lv;->ehn:I

    if-le v0, v1, :cond_0

    iget v0, p1, Lcom/tencent/mm/ui/chatting/lv;->dKv:I

    iget v1, p0, Lcom/tencent/mm/ui/chatting/lv;->ehn:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
