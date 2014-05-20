.class final Lcom/tencent/mm/w/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ctW:Lcom/tencent/mm/n/n;

.field final synthetic ctX:I

.field final synthetic ctY:I

.field final synthetic ctZ:Lcom/tencent/mm/w/u;


# direct methods
.method constructor <init>(Lcom/tencent/mm/w/u;Lcom/tencent/mm/n/n;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/tencent/mm/w/v;->ctZ:Lcom/tencent/mm/w/u;

    iput-object p2, p0, Lcom/tencent/mm/w/v;->ctW:Lcom/tencent/mm/n/n;

    iput p3, p0, Lcom/tencent/mm/w/v;->ctX:I

    iput p4, p0, Lcom/tencent/mm/w/v;->ctY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tencent/mm/w/v;->ctW:Lcom/tencent/mm/n/n;

    iget v1, p0, Lcom/tencent/mm/w/v;->ctX:I

    iget v2, p0, Lcom/tencent/mm/w/v;->ctY:I

    iget-object v3, p0, Lcom/tencent/mm/w/v;->ctZ:Lcom/tencent/mm/w/u;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/mm/n/n;->a(IILcom/tencent/mm/n/x;)V

    .line 120
    return-void
.end method
