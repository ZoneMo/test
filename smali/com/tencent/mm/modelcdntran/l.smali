.class final Lcom/tencent/mm/modelcdntran/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic cpH:Lcom/tencent/mm/modelcdntran/k;


# direct methods
.method constructor <init>(Lcom/tencent/mm/modelcdntran/k;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tencent/mm/modelcdntran/l;->cpH:Lcom/tencent/mm/modelcdntran/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/tencent/mm/modelcdntran/j;->yy()Lcom/tencent/mm/modelcdntran/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/tencent/mm/modelcdntran/j;->yy()Lcom/tencent/mm/modelcdntran/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelcdntran/b;->yt()V

    .line 85
    :cond_0
    return-void
.end method
