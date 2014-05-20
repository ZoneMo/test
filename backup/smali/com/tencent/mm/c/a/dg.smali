.class public final Lcom/tencent/mm/c/a/dg;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bOn:Lcom/tencent/mm/c/a/dh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/dg;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/dg;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 19
    new-instance v0, Lcom/tencent/mm/c/a/dh;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/dh;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/dg;->bOn:Lcom/tencent/mm/c/a/dh;

    .line 14
    const-string v0, "Logout"

    iput-object v0, p0, Lcom/tencent/mm/c/a/dg;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/dg;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/dg;->gbY:Z

    return-void
.end method
