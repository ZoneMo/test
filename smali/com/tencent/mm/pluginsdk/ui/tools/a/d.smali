.class final Lcom/tencent/mm/pluginsdk/ui/tools/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fvi:[B

.field private final fvj:[B


# direct methods
.method constructor <init>([B[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/ui/tools/a/d;->fvi:[B

    .line 26
    iput-object p2, p0, Lcom/tencent/mm/pluginsdk/ui/tools/a/d;->fvj:[B

    .line 27
    return-void
.end method


# virtual methods
.method public final auX()[B
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/a/d;->fvi:[B

    return-object v0
.end method

.method public final auY()[B
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/ui/tools/a/d;->fvj:[B

    return-object v0
.end method
