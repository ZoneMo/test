.class final Lcom/tencent/mm/booter/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bZX:Lcom/tencent/mm/booter/k;

.field final synthetic caa:Ljava/io/FileDescriptor;


# direct methods
.method constructor <init>(Lcom/tencent/mm/booter/k;Ljava/io/FileDescriptor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 850
    iput-object p1, p0, Lcom/tencent/mm/booter/u;->bZX:Lcom/tencent/mm/booter/k;

    iput-object p2, p0, Lcom/tencent/mm/booter/u;->caa:Ljava/io/FileDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 853
    iget-object v0, p0, Lcom/tencent/mm/booter/u;->bZX:Lcom/tencent/mm/booter/k;

    iget-object v1, p0, Lcom/tencent/mm/booter/u;->caa:Ljava/io/FileDescriptor;

    invoke-static {v0, v1}, Lcom/tencent/mm/booter/k;->a(Lcom/tencent/mm/booter/k;Ljava/io/FileDescriptor;)Z

    .line 854
    return-void
.end method
