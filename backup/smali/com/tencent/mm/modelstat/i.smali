.class final Lcom/tencent/mm/modelstat/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cmA:Ljava/lang/String;

.field final synthetic czn:Lcom/tencent/mm/modelstat/g;

.field final synthetic czo:I

.field final synthetic czp:I

.field final synthetic czq:I

.field final synthetic czr:Ljava/lang/String;

.field final synthetic czs:Z


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelstat/g;IILjava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/tencent/mm/modelstat/i;->czn:Lcom/tencent/mm/modelstat/g;

    iput p2, p0, Lcom/tencent/mm/modelstat/i;->czo:I

    iput p3, p0, Lcom/tencent/mm/modelstat/i;->czp:I

    iput-object p4, p0, Lcom/tencent/mm/modelstat/i;->cmA:Ljava/lang/String;

    iput p5, p0, Lcom/tencent/mm/modelstat/i;->czq:I

    iput-object p6, p0, Lcom/tencent/mm/modelstat/i;->czr:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/tencent/mm/modelstat/i;->czs:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/mm/modelstat/i;->czn:Lcom/tencent/mm/modelstat/g;

    iget v0, p0, Lcom/tencent/mm/modelstat/i;->czo:I

    iget v1, p0, Lcom/tencent/mm/modelstat/i;->czp:I

    iget-object v2, p0, Lcom/tencent/mm/modelstat/i;->cmA:Ljava/lang/String;

    iget v2, p0, Lcom/tencent/mm/modelstat/i;->czq:I

    iget-object v3, p0, Lcom/tencent/mm/modelstat/i;->czr:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/tencent/mm/modelstat/i;->czs:Z

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/mm/modelstat/g;->c(IIIZ)V

    .line 116
    return-void
.end method
