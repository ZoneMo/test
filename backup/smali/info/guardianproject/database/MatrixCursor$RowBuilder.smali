.class public Linfo/guardianproject/database/MatrixCursor$RowBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final endIndex:I

.field private index:I

.field final synthetic this$0:Linfo/guardianproject/database/MatrixCursor;


# direct methods
.method constructor <init>(Linfo/guardianproject/database/MatrixCursor;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Linfo/guardianproject/database/MatrixCursor$RowBuilder;->this$0:Linfo/guardianproject/database/MatrixCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p2, p0, Linfo/guardianproject/database/MatrixCursor$RowBuilder;->index:I

    .line 195
    iput p3, p0, Linfo/guardianproject/database/MatrixCursor$RowBuilder;->endIndex:I

    .line 196
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Linfo/guardianproject/database/MatrixCursor$RowBuilder;
    .locals 3
    .parameter

    .prologue
    .line 206
    iget v0, p0, Linfo/guardianproject/database/MatrixCursor$RowBuilder;->index:I

    iget v1, p0, Linfo/guardianproject/database/MatrixCursor$RowBuilder;->endIndex:I

    if-ne v0, v1, :cond_0

    .line 207
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    .line 208
    const-string v1, "No more columns left."

    .line 207
    invoke-direct {v0, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iget-object v0, p0, Linfo/guardianproject/database/MatrixCursor$RowBuilder;->this$0:Linfo/guardianproject/database/MatrixCursor;

    #getter for: Linfo/guardianproject/database/MatrixCursor;->data:[Ljava/lang/Object;
    invoke-static {v0}, Linfo/guardianproject/database/MatrixCursor;->access$0(Linfo/guardianproject/database/MatrixCursor;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Linfo/guardianproject/database/MatrixCursor$RowBuilder;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Linfo/guardianproject/database/MatrixCursor$RowBuilder;->index:I

    aput-object p1, v0, v1

    .line 212
    return-object p0
.end method
