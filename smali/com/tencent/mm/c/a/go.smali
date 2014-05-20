.class public final Lcom/tencent/mm/c/a/go;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bQJ:Lcom/tencent/mm/c/a/gp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/go;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/go;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 15
    new-instance v0, Lcom/tencent/mm/c/a/gp;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/gp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/go;->bQJ:Lcom/tencent/mm/c/a/gp;

    .line 10
    const-string v0, "Switcher"

    iput-object v0, p0, Lcom/tencent/mm/c/a/go;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/go;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/go;->gbY:Z

    return-void
.end method
