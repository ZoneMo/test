.class public final Lcom/tencent/mm/c/a/cv;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/cv;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/cv;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    const-string v0, "GetSnsTagList"

    iput-object v0, p0, Lcom/tencent/mm/c/a/cv;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/cv;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/cv;->gbY:Z

    return-void
.end method
