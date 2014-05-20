.class final Lcom/tencent/mm/w/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ctX:I

.field final synthetic ctY:I

.field final synthetic cue:Lcom/tencent/mm/w/y;


# direct methods
.method constructor <init>(Lcom/tencent/mm/w/y;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 700
    iput-object p1, p0, Lcom/tencent/mm/w/ac;->cue:Lcom/tencent/mm/w/y;

    iput p2, p0, Lcom/tencent/mm/w/ac;->ctX:I

    iput p3, p0, Lcom/tencent/mm/w/ac;->ctY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 704
    iget-object v0, p0, Lcom/tencent/mm/w/ac;->cue:Lcom/tencent/mm/w/y;

    invoke-static {v0}, Lcom/tencent/mm/w/y;->k(Lcom/tencent/mm/w/y;)Lcom/tencent/mm/n/n;

    move-result-object v0

    iget v1, p0, Lcom/tencent/mm/w/ac;->ctX:I

    iget v2, p0, Lcom/tencent/mm/w/ac;->ctY:I

    iget-object v3, p0, Lcom/tencent/mm/w/ac;->cue:Lcom/tencent/mm/w/y;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/n/n;->a(IILcom/tencent/mm/n/x;)V

    .line 705
    return-void
.end method
