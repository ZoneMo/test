.class final Lcom/tencent/mm/ar/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cOC:I

.field final synthetic gjW:Lcom/tencent/mm/ar/a;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ar/a;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 364
    iput-object p1, p0, Lcom/tencent/mm/ar/d;->gjW:Lcom/tencent/mm/ar/a;

    iput p2, p0, Lcom/tencent/mm/ar/d;->cOC:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 368
    iget-object v1, p0, Lcom/tencent/mm/ar/d;->gjW:Lcom/tencent/mm/ar/a;

    iget v0, p0, Lcom/tencent/mm/ar/d;->cOC:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const-string v0, "/data/anr/"

    :goto_0
    invoke-static {v1, v0}, Lcom/tencent/mm/ar/a;->a(Lcom/tencent/mm/ar/a;Ljava/lang/String;)V

    .line 369
    return-void

    .line 368
    :cond_0
    sget-object v0, Lcom/tencent/mm/ar/a;->gjR:Ljava/lang/String;

    goto :goto_0
.end method
