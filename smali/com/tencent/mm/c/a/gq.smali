.class public final Lcom/tencent/mm/c/a/gq;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bQL:Lcom/tencent/mm/c/a/gr;

.field public bQM:Lcom/tencent/mm/c/a/gs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/gq;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/gq;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 15
    new-instance v0, Lcom/tencent/mm/c/a/gr;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gr;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/gq;->bQL:Lcom/tencent/mm/c/a/gr;

    .line 22
    new-instance v0, Lcom/tencent/mm/c/a/gs;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gs;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/gq;->bQM:Lcom/tencent/mm/c/a/gs;

    .line 10
    const-string v0, "TMessageOperation"

    iput-object v0, p0, Lcom/tencent/mm/c/a/gq;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/gq;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/gq;->gbY:Z

    return-void
.end method
