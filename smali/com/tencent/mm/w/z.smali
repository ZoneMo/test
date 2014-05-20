.class final Lcom/tencent/mm/w/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ctW:Lcom/tencent/mm/n/n;

.field final synthetic ctX:I

.field final synthetic ctY:I

.field final synthetic cue:Lcom/tencent/mm/w/y;


# direct methods
.method constructor <init>(Lcom/tencent/mm/w/y;Lcom/tencent/mm/n/n;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/tencent/mm/w/z;->cue:Lcom/tencent/mm/w/y;

    iput-object p2, p0, Lcom/tencent/mm/w/z;->ctW:Lcom/tencent/mm/n/n;

    iput p3, p0, Lcom/tencent/mm/w/z;->ctX:I

    iput p4, p0, Lcom/tencent/mm/w/z;->ctY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/tencent/mm/w/z;->ctW:Lcom/tencent/mm/n/n;

    iget v1, p0, Lcom/tencent/mm/w/z;->ctX:I

    iget v2, p0, Lcom/tencent/mm/w/z;->ctY:I

    iget-object v3, p0, Lcom/tencent/mm/w/z;->cue:Lcom/tencent/mm/w/y;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/n/n;->a(IILcom/tencent/mm/n/x;)V

    .line 202
    return-void
.end method
