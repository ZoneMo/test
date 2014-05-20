.class final Lcom/tencent/mm/sdk/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic gbV:Lcom/tencent/mm/sdk/b/e;

.field final synthetic gbW:Lcom/tencent/mm/sdk/b/b;


# direct methods
.method constructor <init>(Lcom/tencent/mm/sdk/b/b;Lcom/tencent/mm/sdk/b/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tencent/mm/sdk/b/c;->gbW:Lcom/tencent/mm/sdk/b/b;

    iput-object p2, p0, Lcom/tencent/mm/sdk/b/c;->gbV:Lcom/tencent/mm/sdk/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/mm/sdk/b/c;->gbW:Lcom/tencent/mm/sdk/b/b;

    iget-object v1, p0, Lcom/tencent/mm/sdk/b/c;->gbV:Lcom/tencent/mm/sdk/b/e;

    invoke-virtual {v0, v1}, Lcom/tencent/mm/sdk/b/b;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 66
    return-void
.end method
